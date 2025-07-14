import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/tastepicker/artistpicker.dart';
import 'package:flytime_spotify/signup/signup2.dart';
import 'package:flytime_spotify/welcome.dart';

class signup5 extends StatefulWidget {
  const signup5({super.key});

  @override
  State<signup5> createState() => _signup5State();
}

class _signup5State extends State<signup5> {
  bool checkbox = false;
  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Create account',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
      ),
      body: Column(
        children: [
          Container(),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('What\s your name?', style: TextStyle(fontSize: 16)),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  color: const Color.fromARGB(199, 158, 158, 158),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Color.fromARGB(255, 30, 215, 96),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'This appears on your spotify profile.',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 20),
              Container(height: 1, width: 300, color: Colors.white),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: Text(
                  'By tapping on"Create account",you agree to the Spotify Terms of Use and Privacy and Policy',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Text(
                'Terms of Use     Privacy Policy',
                style: TextStyle(
                  color: Color.fromARGB(255, 30, 215, 96),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 300,
            child: Column(
              children: [
                CheckboxListTile(
                  value: checkbox,
                  onChanged: (value) {
                    setState(() {
                      checkbox = value!;
                    });
                  },
                  title: Text(
                    "I would prefer not to receive marketing messages from Spotify",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  activeColor: Color(0xFF1ED760),
                  checkColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: EdgeInsets.zero,
                  tileColor: Colors.transparent,
                ),

                CheckboxListTile(
                  value: checkbox2,
                  onChanged: (value) {
                    setState(() {
                      checkbox2 = value!;
                    });
                  },
                  title: Text(
                    "Share my registration data with Spotify\'s content providers for marketing purposes.",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  activeColor: Color(0xFF1ED760),
                  checkColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: EdgeInsets.zero,
                  tileColor: Colors.transparent,
                ),
              ],
            ),
          ),
          SizedBox(height: 200),
          Bounceable(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Artistpicker()),
              );
            },
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Center(
                child: Text(
                  'Create account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
