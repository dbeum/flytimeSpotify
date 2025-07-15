import 'package:carousel_slider/carousel_slider.dart';
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
            SizedBox(height: 60),
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
                      Icon(Icons.notifications_outlined, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.history, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.settings_outlined, color: Colors.white),
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
                          width: 130,

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
                SizedBox(width: 10),
                Container(
                  child: Row(
                    children: [
                      Image.asset('assets/images/a2.jpeg', height: 50),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 130,
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
                          width: 130,

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
                SizedBox(width: 10),
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
                          width: 130,
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
                          width: 130,

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
                SizedBox(width: 10),
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
                          width: 130,
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
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,

              child: CarouselSlider(
                options: CarouselOptions(
                  height: 155.0,
                  //  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.32,
                  initialPage: 1,
                ),
                items: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/a5.jpeg', height: 130),
                        SizedBox(height: 5),
                        Text('On Repeat', style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/a1.jpeg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'Olivia Rodrigo,Billie Eilish',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/a2.jpeg', height: 130),
                        SizedBox(height: 5),
                        Text('Omah Lay,Ruger', style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/a4.jpeg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'Nostalgic Rewind',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Jump back in',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,

              child: CarouselSlider(
                options: CarouselOptions(
                  height: 155.0,
                  //  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.32,
                  initialPage: 1,
                ),
                items: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/b4.jpg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'Dave,Central Cee',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/b3.jpg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'Torey Lanez,Lil Tecca',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/b2.jpg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'Wiley,Major Lazer',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/b1.jpg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'Tori Kelly,Sam Smith',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Recents',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,

              child: CarouselSlider(
                options: CarouselOptions(
                  height: 140.0,
                  //  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.35,
                  initialPage: 1,
                ),
                items: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/a3.jpeg', height: 100),
                        SizedBox(height: 5),
                        Text(
                          'Cruel Santino Mix',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/a1.jpeg', height: 100),
                        SizedBox(height: 5),
                        Text(
                          'Olivia Rodrigo Mix',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(360)),
                          child: Image.asset(
                            'assets/images/rema.jpg',
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Rema', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/a4.jpeg', height: 100),
                        SizedBox(height: 5),
                        Text(
                          'Nostalgic Rewind',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Best of artists',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,

              child: CarouselSlider(
                options: CarouselOptions(
                  height: 155.0,
                  //  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.32,
                  initialPage: 1,
                ),
                items: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/c4.jpg', height: 130),
                        SizedBox(height: 5),
                        Text('This is Ckay', style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/c3.jpg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'This is Odumodubluck',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/c2.jpg', height: 130),
                        SizedBox(height: 5),
                        Text(
                          'This is Seyi Vibez',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/c1.jpg', height: 130),
                        SizedBox(height: 5),
                        Text('This is NSG', style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
