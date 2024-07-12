import 'package:flutter/material.dart';

import '../../../ui/app_bar.dart';
import '../../../ui/button.dart';
import '../../email_validation/screens/email_input_screen.dart';
import '../../kyc/kyc_screen.dart';
import '../../phone_validation/screens/phone_input_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CpAppBar(
          title: Text('KYC Demo'),
          centerTitle: true,
        ),
        backgroundColor: const Color(0xFFC8B57D),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CpButton(
                    width: double.infinity,
                    text: 'KYC',
                    onPressed: () => KycPage.push(context),
                  ),
                  const SizedBox(height: 12),
                  CpButton(
                    width: double.infinity,
                    text: 'Email',
                    onPressed: () => EmailInputScreen.push(context),
                  ),
                  const SizedBox(height: 12),
                  CpButton(
                    width: double.infinity,
                    text: 'Phone',
                    onPressed: () => PhoneInputScreen.push(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
