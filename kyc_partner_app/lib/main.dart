import 'package:flutter/material.dart';
import 'package:kyc_partner_app/data.dart';
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

          return Row(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return ListTile(
                      title: Text('User ${user.userPK}'),
                      onTap: () => state.fetchUser(user),
                    );
                  },
                ),
              ),
              VerticalDivider(),
              Expanded(
                flex: 2,
                child: state.selectedUser == null
                    ? Center(child: Text('Select a user to view details'))
                    : SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              '${state.selectedUser?.dob}',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
