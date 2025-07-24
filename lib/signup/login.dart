import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/signup/signup.dart';
import 'package:flytime_spotify/signup/signup1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 18, 18, 18)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150),
            Image.asset('assets/images/logo.png', height: 40),
            SizedBox(height: 20),
            Text(
              'Login to Spotify',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 30),
                  Bounceable(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup1()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        color: Color.fromARGB(255, 30, 215, 96),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.mail_outline, color: Colors.black),
                          SizedBox(width: 10),
                          Flexible(child: Text('Continue with email')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.phone_android, color: Colors.white),
                          SizedBox(width: 10),
                          Flexible(child: Text('Continue with phone number')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset('assets/images/google.png'),
                          SizedBox(width: 10),
                          Flexible(child: Text('Continue with Google')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset('assets/images/facebook.png'),
                          SizedBox(width: 10),
                          Flexible(child: Text('Continue with Facebook')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset('assets/images/apple.png'),
                          SizedBox(width: 10),
                          Flexible(child: Text('Continue with Apple')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
