import 'package:flutter/material.dart';
import 'package:kyc_app_client/kyc_app_client.dart';
import 'package:provider/provider.dart';

import '../../../ui/app_bar.dart';
import '../../../ui/button.dart';
import '../../../ui/loader.dart';
import '../../../ui/snackbar.dart';
import '../../../ui/textfield.dart';
import '../../encryption/state.dart';
import '../../kyc/data/client.dart';
import 'email_confirmation_screen.dart';

class EmailInputScreen extends StatefulWidget {
  const EmailInputScreen({super.key});

  static void push(BuildContext context) => Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) => const EmailInputScreen(),
        ),
      );

  @override
  State<EmailInputScreen> createState() => _EmailInputScreenState();
}

class _EmailInputScreenState extends State<EmailInputScreen> {
  final _emailController = TextEditingController();

  bool get _isValid => RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
      ).hasMatch(_emailController.text);

  Future<void> _sendEmail(String email) async {
    final success = await runWithLoader<bool>(
      context,
      () async {
        try {
          final state = context.read<WalletAppState>();

          await state.updateEmail(email);

          await state.generateValidatorToken(validatorAuthPk);

          await otpClient.sendOtpByEmail(
            SendOtpRequest(
              secretKey: state.rawSecretKey,
              partnerToken: state.validatorToken,
              userPk: state.authPublicKey,
            ),
          );

          return true;
        } on Exception catch (ex) {
          print('failed: $ex');

          if (!mounted) return false;

          showCpErrorSnackbar(
            context,
            message: 'Failed to send verification code',
          );
          return false;
        }
      },
    );
    if (!mounted) return;
    if (success) EmailConfirmationScreen.push(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CpAppBar(
          title: Text('Email Verification'),
        ),
        backgroundColor: const Color(0xFFC8B57D),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  'Enter email to get verification code:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 12),
                CpTextField(
                  padding: const EdgeInsets.only(
                    top: 18,
                    bottom: 16,
                    left: 26,
                    right: 26,
                  ),
                  controller: _emailController,
                  inputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  backgroundColor: const Color(0xFF9D8A59),
                  placeholder: 'Enter email',
                  placeholderColor: Colors.white,
                  textColor: Colors.white,
                  fontSize: 16,
                ),
                const Spacer(),
                ListenableBuilder(
                  listenable: _emailController,
                  builder: (context, child) => CpButton(
                    width: double.infinity,
                    text: 'Send verification code',
                    onPressed: _isValid
                        ? () => _sendEmail(_emailController.text)
                        : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
