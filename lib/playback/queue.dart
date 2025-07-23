import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:provider/provider.dart';

class Queue extends StatefulWidget {
  const Queue({super.key});

  @override
  State<Queue> createState() => _QueueState();
}

class _QueueState extends State<Queue> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlayProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Stack(
              children: [
                Center(
                  child: Text(
                    'Track Remastered',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/cancel2.png'),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                Text(
                  'Track Remastered',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text(
                  'Now Playing',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/playback.png'),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Track 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Rema', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.6),
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
                Row(
                  children: [
                    Icon(Icons.repeat, color: Colors.grey, size: 30),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
