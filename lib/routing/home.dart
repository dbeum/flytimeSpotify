import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flytime_spotify/album.dart';
import 'package:flytime_spotify/artist/rema.dart';
import 'package:flytime_spotify/playlist.dart';
import 'package:flytime_spotify/playlist/chill.dart';
import 'package:flytime_spotify/playlist/creul.dart';
import 'package:flytime_spotify/playlist/drake.dart';
import 'package:flytime_spotify/playlist/grime.dart';
import 'package:flytime_spotify/playlist/nostolgia.dart';
import 'package:flytime_spotify/playlist/olivia.dart';
import 'package:flytime_spotify/playlist/onRepeat.dart';
import 'package:flytime_spotify/playlist/pop.dart';
import 'package:flytime_spotify/playlist/tckay.dart';
import 'package:flytime_spotify/playlist/tnsg.dart';
import 'package:flytime_spotify/playlist/todumo.dart';
import 'package:flytime_spotify/playlist/tseyi.dart';
import 'package:flytime_spotify/playlist/upbeat.dart';

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
                      Image.asset('assets/images/guts.png', height: 50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AlbumPage(albumId: '1xJHno7SmdVtZAtXbdbDZp'),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.32,

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
                                'GUTS',
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
                      Image.asset('assets/images/chill.jpeg', height: 50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlaylistPage(
                                playlistId: '6mv2k2DBxZ516Cqcw1IZQE',
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.32,
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
                        'assets/images/cruel.jpeg',
                        height: 50,
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlaylistPage(
                                playlistId: '2EMEoIYwiPecwKa5tOPbZm',
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.32,

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
                                'Best of Cruel Santino',
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
                        'assets/images/nostolgia.jpeg',
                        height: 50,
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlaylistPage(
                                playlistId: '2Uow2rC2RpEw5AEjoYxrZc',
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.32,
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
                                'Nostalgia.',
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
                      Image.asset('assets/images/told.png', height: 50),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AlbumPage(albumId: '5PKl5yyetQ6mFeWK6ONbSH'),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.32,

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
                                'I Told Them...',
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Rema()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.32,
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
                  fontSize: 22,
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
                  height: 145.0,
                  //  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.34,
                  initialPage: 1,
                ),
                items: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistPage(
                            playlistId: '6mv2k2DBxZ516Cqcw1IZQE',
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/chill.jpeg', height: 110),
                          SizedBox(height: 5),
                          Text('Chill Mix', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistPage(
                            playlistId: '2Uow2rC2RpEw5AEjoYxrZc',
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/nostolgia.jpeg',
                            height: 110,
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: 100,
                            child: Text(
                              'Charlie Puth,Justin Bieber',
                              style: TextStyle(fontSize: 10),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistPage(
                            playlistId: '2EMEoIYwiPecwKa5tOPbZm',
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/cruel.jpeg', height: 110),
                          SizedBox(height: 5),
                          Text('Cruel Santino', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => Nostolgia()),
                  //     );
                  //   },
                  //   child: Center(
                  //     child: Column(
                  //       children: [
                  //         Image.asset('assets/images/nostolgia.png', height: 110),
                  //         SizedBox(height: 5),
                  //         Text(
                  //           'Nostalgic Rewind',
                  //           style: TextStyle(fontSize: 10),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
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
                  fontSize: 22,
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
                  height: 145.0,
                  //  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.34,
                  initialPage: 1,
                ),
                items: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Grime()),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/guts.png', height: 110),
                          SizedBox(height: 5),
                          Text('GUTS', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlbumPage(albumId: '3SpBlxme9WbeQdI9kx7KAV'),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/certified.png',
                            height: 110,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Certified Lover Boy',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlbumPage(albumId: '277z75G1Gdz0SWN9pegrrs'),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/burna.png', height: 110),
                          SizedBox(height: 5),
                          Text('African Giant', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlbumPage(albumId: '3tx8gQqWbGwqIGZHqDNrGe'),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/sweetener.png',
                            height: 110,
                          ),
                          SizedBox(height: 5),
                          Text('Sweetener', style: TextStyle(fontSize: 11)),
                        ],
                      ),
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
                  fontSize: 22,
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistPage(
                            playlistId: '2EMEoIYwiPecwKa5tOPbZm',
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/cruel.jpeg', height: 100),
                          SizedBox(height: 5),
                          Text('Cruel Santino', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlbumPage(albumId: '1xJHno7SmdVtZAtXbdbDZp'),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/guts.png', height: 100),
                          SizedBox(height: 5),
                          Text('GUTS', style: TextStyle(fontSize: 10)),
                        ],
                      ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistPage(
                            playlistId: '2Uow2rC2RpEw5AEjoYxrZc',
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/nostolgia.jpeg',
                            height: 100,
                          ),
                          SizedBox(height: 5),
                          Text('Nostalgia.', style: TextStyle(fontSize: 10)),
                        ],
                      ),
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
                  fontSize: 22,
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
                  height: 145.0,
                  //  autoPlay: true,
                  // enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 0),
                  viewportFraction: 0.34,
                  initialPage: 1,
                ),
                items: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AlbumPage(albumId: '3TDqyvMmWlK34WpAxwG6hf'),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/c4.jpg', height: 110),
                          SizedBox(height: 5),
                          Text(
                            'Ckay The Second',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlbumPage(albumId: '6e1McsPwHgiySHVlpZRhFx'),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/c3.jpg', height: 110),
                          SizedBox(height: 5),
                          Text(
                            'This is Odumodubluck',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistPage(
                            playlistId: '5BaRk0mmuRfvfRgJjbgxfm',
                          ),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/c2.jpg', height: 110),
                          SizedBox(height: 5),
                          Text(
                            'This is Seyi Vibez',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlbumPage(albumId: '3Uo1dpUULgBeWEgjf5AMsd'),
                        ),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/images/c1.jpg', height: 110),
                          SizedBox(height: 5),
                          Text('This is NSG', style: TextStyle(fontSize: 10)),
                        ],
                      ),
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
