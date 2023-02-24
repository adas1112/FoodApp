import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screens/home_screen/home_screen.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background_image.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Sign In to Continue",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Vegi",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          BoxShadow(
                            blurRadius: 35,
                            color: Colors.green.shade900,
                            offset: Offset(3, 3),
                          )
                        ]),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {
                          _googleSignUp().then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),),),);
                        },
                      ),
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text("By Signin in you are agreeing to our ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Terms And Privacy Policy ",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
