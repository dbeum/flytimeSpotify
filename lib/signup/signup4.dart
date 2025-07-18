import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/providers/visibility.dart';
import 'package:flytime_spotify/signup/signup3.dart';
import 'package:flytime_spotify/signup/signup5.dart';
import 'package:provider/provider.dart';

class Signup4 extends StatefulWidget {
  const Signup4({super.key});

  @override
  State<Signup4> createState() => _Signup4State();
}

class _Signup4State extends State<Signup4> {
  DateTime? selectedDate;

  void _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: Color(0xFF1ED760), // Spotify green
              onPrimary: Colors.black,
              surface: Color(0xFF121212),
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: Color(0xFF121212),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
      body: Column(
        children: [
          Container(),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What\'s your date of birth?',
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                onTap: _pickDate,
                key: Key('dateField'),
                child: Container(
                  width: 300,
                  height: 40,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    color: const Color.fromARGB(199, 158, 158, 158),
                  ),
                  child: Text(
                    selectedDate != null
                        ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                        : "Select Date of Birth",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Bounceable(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signup5()),
              );
            },
            key: Key('nextButton4'),
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
