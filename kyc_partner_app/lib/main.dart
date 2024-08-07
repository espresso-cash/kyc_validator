import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';
import 'package:kyc_partner_app/data.dart';
import 'package:kyc_partner_app/model/kyc_model.dart';
import 'package:kyc_partner_app/state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PartnerAppState(partnerClient)..init(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        title: 'KYC Partner App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PartnerAppPage(),
      ),
    );
  }
}

class PartnerAppPage extends StatelessWidget {
  const PartnerAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Partner App')),
      body: Consumer<PartnerAppState>(
        builder: (context, state, child) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.users.isEmpty) {
            return const Center(child: Text('No users found'));
          }
          return ListView.builder(
            itemCount: state.users.length,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              final user = state.users[index];

              return Card(
                child: ListTile(
                  title: const Text('User PK'),
                  subtitle: Text(user.userPK),
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailPage(user: user),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class UserDetailPage extends StatefulWidget {
  final KycUsers user;

  const UserDetailPage({super.key, required this.user});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  KycUserInfo? _userInfo;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchUser();
  }

  Future<void> _fetchUser() async {
    try {
      final state = Provider.of<PartnerAppState>(context, listen: false);
      final user = await state.fetchUser(widget.user);
      setState(() {
        _userInfo = user;
        _isLoading = false;
      });
    } catch (e) {
      print('Error fetching user data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    if (_userInfo?.selfie != null)
                      CircleAvatar(
                        radius: 65,
                        backgroundImage:
                            MemoryImage(base64Decode(_userInfo!.selfie!)),
                      ),
                    const SizedBox(height: 24),
                    ListTile(
                      title: const Text('First Name'),
                      subtitle: Text(_userInfo?.firstName ?? ''),
                    ),
                    ListTile(
                      title: const Text('Middle Name'),
                      subtitle: Text(_userInfo?.middleName ?? ''),
                    ),
                    ListTile(
                      title: const Text('Last Name'),
                      subtitle: Text(_userInfo?.lastName ?? ''),
                    ),
                    ListTile(
                      title: const Text('Date of Birth'),
                      subtitle: Text(_userInfo?.dob ?? ''),
                    ),
                    ListTile(
                      title: const Text('Country Code'),
                      subtitle: Text(_userInfo?.countryCode ?? ''),
                    ),
                    ListTile(
                      title: const Text('ID Type'),
                      subtitle: Text(_userInfo?.idType ?? ''),
                    ),
                    ListTile(
                      title: const Text('ID Number'),
                      subtitle: Text(_userInfo?.idNumber ?? ''),
                    ),
                    if (_userInfo?.emailVerificationResult?.isNotEmpty ?? false)
                      const ListTile(
                        title: Text('Email'),
                        subtitle: Text('Verified'),
                      ),
                    if (_userInfo?.phoneVerificationResult?.isNotEmpty ?? false)
                      const ListTile(
                        title: Text('Phone'),
                        subtitle: Text('Verified'),
                      ),
                    if (_userInfo?.smileIdResult case final result?)
                      ListTile(
                        title: const Text('Smile ID Result'),
                        subtitle: JsonView.map(jsonDecode(result)),
                      ),
                  ],
                ),
              ),
            ),
    );
  }
}
