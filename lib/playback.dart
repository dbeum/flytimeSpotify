import 'package:flutter/material.dart';

class Playback extends StatefulWidget {
  const Playback({super.key});

  @override
  State<Playback> createState() => _PlaybackState();
}

class _PlaybackState extends State<Playback> {
  double _progress = 0.3;
  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  Text('Playing Song'),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
              SizedBox(height: 100),
              Container(
                height: 350,
                width: 350,
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
                      height: 4,
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
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.shuffle, color: Colors.white, size: 35),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.skip_previous, color: Colors.white, size: 50),
                      SizedBox(width: 10),
                      Icon(Icons.play_circle, color: Colors.white, size: 80),
                      SizedBox(width: 10),
                      Icon(Icons.skip_next, color: Colors.white, size: 50),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.repeat_on, color: Colors.white, size: 35),
                      SizedBox(width: 20),
                    ],
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
                      Icon(
                        Icons.speaker_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.ios_share_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      Icon(Icons.more_horiz, color: Colors.white, size: 25),
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
