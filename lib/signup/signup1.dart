import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/signup/signup2.dart';
import 'package:flytime_spotify/welcome.dart';

class signup1 extends StatefulWidget {
  const signup1({super.key});

  @override
  State<signup1> createState() => _signup1State();
}

class _signup1State extends State<signup1> {
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
              Text('What\s your email?', style: TextStyle(fontSize: 16)),
              Container(
                width: 300,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  color: const Color.fromARGB(199, 158, 158, 158),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Color.fromARGB(255, 30, 215, 96),
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              Text(
                'You\'l need to confrim this email later',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          SizedBox(height: 50),
          Bounceable(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signup2()),
              );
            },
            child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 83, 83, 83),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Center(child: Text('Next')),
            ),
          ),
        ],
      ),
    );
  }
}
