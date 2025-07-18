import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/signup/signup1.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 18, 18, 18)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 180),
          Image.asset('assets/images/logo.png', height: 40),
          SizedBox(height: 20),
          Text(
            'Sign up to',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            'start listening',
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
                  key: Key('continuewithemailButton'),
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
                        SizedBox(width: 50),
                        Text('Continue with email'),
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
                        Icon(Icons.phone_android),
                        SizedBox(width: 30),
                        Text('Continue with phone number'),
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
                        SizedBox(width: 50),
                        Text('Continue with Google'),
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
                        SizedBox(width: 50),
                        Text('Continue with Apple'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text('Log in', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
