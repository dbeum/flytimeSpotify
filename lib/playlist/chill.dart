import 'package:flutter/material.dart';

class Chill extends StatefulWidget {
  const Chill({super.key});

  @override
  State<Chill> createState() => _ChillState();
}

class _ChillState extends State<Chill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.brown,
                    Color.fromARGB(255, 18, 18, 18),
                  ], // Gradient colors
                  begin: Alignment.topCenter, // Start point
                  end: Alignment.bottomCenter, // End point
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 23,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                      child: Image.asset('assets/images/a2.jpeg'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Chill Mix',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(360)),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            'U',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'User',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        '1h4m',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),

                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(360)),
                        color: Color.fromARGB(255, 30, 215, 96),
                      ),
                      child: Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.person_add_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.more_horiz, color: Colors.grey),
                  ],
                ),

                Row(
                  children: [
                    Icon(
                      Icons.shuffle_rounded,
                      color: Color.fromARGB(255, 30, 215, 96),
                      size: 30,
                    ),
                    Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Color.fromARGB(255, 30, 215, 96),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/ch1.jpeg', height: 50),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'let.go.my.hand',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'J.Cole,Bas,6lack',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz, color: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/ch2.jpeg', height: 50),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Venus',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'Faceless,Serotonin',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz, color: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/ch3.jpeg', height: 50),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chosen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'Blxst,Tyga,Ty Dolla \$ign',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz, color: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/ch4.jpeg', height: 50),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LUV',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'Tory Lanez',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz, color: Colors.grey),
                    ],
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
