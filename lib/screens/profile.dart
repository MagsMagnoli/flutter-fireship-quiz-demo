import 'package:firebase_auth/firebase_auth.dart';
import 'package:fireship_quiz_demo/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<FirebaseUser>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(user.displayName),
      ),
      body: Center(
        child: FlatButton(
          child: Text('logout'),
          onPressed: () async {
            await auth.signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          },
        ),
      ),
    );
  }
}
