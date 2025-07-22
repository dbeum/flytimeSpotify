import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/artist/rema.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:provider/provider.dart';

class Playbackmore extends StatefulWidget {
  const Playbackmore({super.key});

  @override
  State<Playbackmore> createState() => _PlaybackmoreState();
}

class _PlaybackmoreState extends State<Playbackmore> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlayProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrangeAccent,
                    Color.fromARGB(255, 18, 18, 18),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/playback.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Track 1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text('Rema'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      provider.togglePlay();
                    },
                    child: Row(
                      children: [
                        provider.isplayed
                            ? Image.asset('assets/images/v1.png')
                            : Image.asset('assets/images/love.png'),
                        SizedBox(width: 15),
                        Text('Like', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Bounceable(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rema()),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/v2.png'),
                        SizedBox(width: 15),
                        Text('View Artist', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/images/v3.png'),
                      SizedBox(width: 15),
                      Text('Share', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      Image.asset('assets/images/love.png'),
                      SizedBox(width: 15),
                      Text('Like all Songs', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/images/v4.png'),
                      SizedBox(width: 15),
                      Text('Add to playlist', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/images/v5.png'),
                      SizedBox(width: 15),
                      Text('Add to queue', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset('assets/images/v6.png'),
                      SizedBox(width: 15),
                      Text('Go to Radio', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  'Close',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
