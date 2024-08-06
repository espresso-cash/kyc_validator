import 'dart:convert';

import 'package:flutter/material.dart';
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
  const PartnerAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Partner App')),
      body: Consumer<PartnerAppState>(
        builder: (context, state, child) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.users.isEmpty) {
            return Center(child: Text('No users found'));
          }
          return ListView.builder(
            itemCount: state.users.length,
            padding: EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              final user = state.users[index];

              return Card(
                child: ListTile(
                  title: Text('User PK'),
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

  UserDetailPage({Key? key, required this.user}) : super(key: key);

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
      appBar: AppBar(title: Text('User Details')),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
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
                      title: Text('First Name'),
                      subtitle: Text(_userInfo?.firstName ?? ''),
                    ),
                    ListTile(
                      title: Text('Middle Name'),
                      subtitle: Text(_userInfo?.middleName ?? ''),
                    ),
                    ListTile(
                      title: Text('Last Name'),
                      subtitle: Text(_userInfo?.lastName ?? ''),
                    ),
                    ListTile(
                      title: Text('Date of Birth'),
                      subtitle: Text(_userInfo?.dob ?? ''),
                    ),
                    ListTile(
                      title: Text('Country Code'),
                      subtitle: Text(_userInfo?.countryCode ?? ''),
                    ),
                    ListTile(
                      title: Text('ID Type'),
                      subtitle: Text(_userInfo?.idType ?? ''),
                    ),
                    ListTile(
                      title: Text('ID Number'),
                      subtitle: Text(_userInfo?.idNumber ?? ''),
                    ),
                    if (_userInfo?.smileIdResult case final result?)
                      ListTile(
                        title: Text('Smile ID Result'),
                        subtitle: Text(result),
                      ),
                  ],
                ),
              ),
            ),
    );
  }
}
