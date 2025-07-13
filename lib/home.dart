import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently played',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_outlined),
                      SizedBox(width: 10),
                      Icon(Icons.history),
                      SizedBox(width: 10),
                      Icon(Icons.settings_outlined),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset('assets/images/a1.jpeg', height: 50),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 170,

                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 40, 40, 40),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Text(
                                'Olivia Rodrigro Mix',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: Row(
                    children: [
                      Image.asset('assets/images/a2.jpeg', height: 50),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 40, 40, 40),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Text(
                                'Chill Mix',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/a3.jpeg',
                        height: 50,
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 170,

                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 40, 40, 40),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Text(
                                'Cruel Santino Mix',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/a4.jpeg',
                        height: 50,
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 40, 40, 40),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Text(
                                'Nostalgic Rewind',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset('assets/images/a5.jpeg', height: 50),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 170,

                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 40, 40, 40),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Text(
                                'On Repeat',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/rema1.jpeg',
                        height: 50,
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 40, 40, 40),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Text(
                                'Rema',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Your top mixes',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
