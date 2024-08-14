import 'package:randosel_main_1/colors/login_button_color.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

class AuthScreen extends StatelessWidget {

  const AuthScreen({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  child: Image.asset(
                    'assets/img/logo.png',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: ()=> onGoogleLoginPress(context), 
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: SECONDARY_COLOR,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
                child: Text('sign with Google Login'))
            ]
          ),
        ),
      );
    }
    onGoogleLoginPress(BuildContext context) async {
      GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: [
          'email',
        ],
      );

      try {
        GoogleSignInAccount? account = await googleSignIn.signIn();
        print(account);
      } catch(error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('failed to login'))
        );
      }
    }
}