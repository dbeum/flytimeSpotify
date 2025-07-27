import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/playback/queue.dart';
import 'package:flytime_spotify/playback/share.dart';
import 'package:flytime_spotify/providers/expand.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:flytime_spotify/providers/shuffle.dart';
import 'package:provider/provider.dart';

class Playback extends StatefulWidget {
  const Playback({super.key});

  @override
  State<Playback> createState() => _PlaybackState();
}

class _PlaybackState extends State<Playback> {
  double _progress = 0.3;
  List<double> barHeights = [4, 6, 5, 7, 9];
  late Timer timer;
  final random = Random();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 300), (_) {
      setState(() {
        barHeights = List.generate(5, (_) => random.nextDouble() * 60 + 20);
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlayProvider>(context);
    final shuffle = Provider.of<ShuffleProvider>(context);
    final expand = Provider.of<Expand>(context);
    final totalWidth = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrangeAccent, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Transform.rotate(
                      angle: -1.57,
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  Text('Playing Song'),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
              SizedBox(height: 60),
              Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/playback.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Track 1',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' Default Artist',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 25),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    _progress += details.delta.dx / totalWidth;
                    _progress = _progress.clamp(
                      0.0,
                      1.0,
                    ); // keep between 0 and 1
                  });
                },
                child: Stack(
                  children: [
                    // Background line
                    Container(
                      height: 6,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    // Progress filled line
                    Container(
                      height: 6,
                      width: totalWidth * _progress,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    // Thumb knob
                    Positioned(
                      left: totalWidth * _progress - 6,
                      child: Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.shuffle_rounded, color: Colors.grey, size: 30),
                    ],
                  ),
                  Row(
                    children: [
                      Bounceable(
                        onTap: () {},
                        child: Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      SizedBox(width: 10),
                      Bounceable(
                        onTap: () {
                          provider.togglePlay();
                        },
                        child: provider.isplayed
                            ? Icon(
                                Icons.pause_circle,
                                color: Colors.white,
                                size: 80,
                              )
                            : Icon(
                                Icons.play_circle,
                                color: Colors.white,
                                size: 80,
                              ),
                      ),
                      SizedBox(width: 10),
                      Bounceable(
                        onTap: () {},
                        child: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: shuffle.toggleshuffle,
                    child: Row(
                      children: [
                        shuffle.isshuffled
                            ? Icon(Icons.repeat, color: Colors.grey, size: 30)
                            : Icon(
                                Icons.repeat,
                                color: Color.fromARGB(255, 30, 215, 96),
                                size: 30,
                              ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.black, // like Spotify
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            builder: (context) {
                              return Container(
                                //   width: 100,
                                height: 500,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 18, 18, 18),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30),
                                    Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: barHeights.map((height) {
                                            return AnimatedContainer(
                                              duration: Duration(
                                                milliseconds: 200,
                                              ),
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 3,
                                              ),
                                              width: 6,
                                              height: height,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Listening on',
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'Speaker',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(
                                                  255,
                                                  30,
                                                  215,
                                                  96,
                                                ),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 50),
                                    Padding(
                                      padding: EdgeInsetsGeometry.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(width: 30),
                                              Text(
                                                'Start a Group Session',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Listen with friends, in real time. Pick what to play and control the music together.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),

                                          Center(
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(360),
                                                        ),
                                                    color: Colors.blue,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'U',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 50,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Container(
                                                  height: 45,
                                                  width: 140,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                      255,
                                                      30,
                                                      215,
                                                      96,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(20),
                                                        ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Start Session',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Container(
                                                  height: 40,
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(20),
                                                        ),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Scan to Join',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.speaker_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Share()),
                          );
                        },
                        icon: Icon(
                          Icons.ios_share_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Queue()),
                          );
                        },
                        child: Image.asset('assets/images/more.png'),
                      ),
                      SizedBox(width: 10),
                    ],
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
