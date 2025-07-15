import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: 350,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What do you want to listen to?',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'Browse all',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.pink,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Music',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 72.5),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                  SizedBox(width: 32),
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.green,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Podcast',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 56.5),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.purple,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Live Events',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 33),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                  SizedBox(width: 32),
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Made For You',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 17.5),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.greenAccent,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Upcoming',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 41.9),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                  SizedBox(width: 32),
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.lightGreen,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  New Releases',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 14.9),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.red,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Afro',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 84.1),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                  SizedBox(width: 32),
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.blueAccent,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Hip-Hop',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 54.15),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.deepOrange,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Charts',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 66.5),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                  SizedBox(width: 32),
                  Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.brown,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Party',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 76.3),
                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
