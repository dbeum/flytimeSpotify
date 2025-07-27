import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/signup/signup4.dart';

class Signup3 extends StatefulWidget {
  const Signup3({super.key});

  @override
  State<Signup3> createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
  String? selectedGender;

  final List<String> genderOptions = ['Male', 'Female', 'Prefer not to say'];

  void _showGenderPickerModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFF121212),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: genderOptions.length,
            itemBuilder: (context, index) {
              String gender = genderOptions[index];
              bool isSelected = gender == selectedGender;

              return ListTile(
                title: Text(
                  gender,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                trailing: isSelected
                    ? Icon(Icons.check, color: Color(0xFF1ED760))
                    : null,
                onTap: () {
                  setState(() {
                    selectedGender = gender;
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Whats your gender?', style: TextStyle(fontSize: 16)),
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    color: const Color.fromARGB(199, 158, 158, 158),
                  ),
                  padding: EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: _showGenderPickerModal,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedGender ?? "Select Gender",
                          style: TextStyle(color: Colors.white),
                          key: Key('genderField'),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
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
                  MaterialPageRoute(builder: (context) => Signup4()),
                );
              },
              key: Key('nextButton3'),
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
