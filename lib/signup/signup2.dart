import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/providers/visibility.dart';
import 'package:flytime_spotify/signup/signup3.dart';
import 'package:provider/provider.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<passwordVisibilityProvider>(context);
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create a password?', style: TextStyle(fontSize: 16)),
                Container(
                  width: 300,
                  height: 40,

                  color: const Color.fromARGB(255, 248, 254, 190),
                  padding: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.visiblePassword,
                          key: Key('passwordField'),
                          obscureText: provider.isvisible,

                          cursorColor: Colors.grey,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),

                      IconButton(
                        onPressed: provider.togglevisibily,
                        icon: Icon(
                          provider.isvisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Bounceable(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup3()),
                );
              },
              key: Key('nextButton2'),
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
      ),
    );
  }
}
