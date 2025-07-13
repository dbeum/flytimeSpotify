import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flytime_spotify/providers/selectedartist.dart';
import 'package:flytime_spotify/tastepicker/podcastpicker.dart';
import 'package:provider/provider.dart';

class Artistpicker extends StatefulWidget {
  const Artistpicker({super.key});

  @override
  State<Artistpicker> createState() => _ArtistpickerState();
}

class _ArtistpickerState extends State<Artistpicker> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Selectedartistprovider>(context);
    int count = provider.selectedCount;
    String message;
    if (count == 0) {
      message = 'Choose 3 or more artists you like';
    } else if (count == 1) {
      message = 'Choose 2 or more artists you like';
    } else if (count == 2) {
      message = 'Choose 1 more artist you like';
    } else {
      message = 'All set';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,

        title: Text(message, style: TextStyle(fontSize: 15)),

        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: provider.toggleSelected,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/billie.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Billie Eilish'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected2,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/ariana.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected2)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Ariana Grande'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected3,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/bts.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected3)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('BTS'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: provider.toggleSelected4,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/centralcee.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected4)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Central Cee'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected5,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/drake.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected5)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Drake'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected6,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/dualipa.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected6)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Dua Lipa'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: provider.toggleSelected7,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/ed.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected7)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Ed Sheeran'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected8,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/harry.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected8)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Harry Styles'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected9,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/jorja.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected9)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Jorja Smith'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: provider.toggleSelected10,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/lilwayne.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected10)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Lil Wayne'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected11,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/olivia.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected11)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Olivia Rodrigo'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected12,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/rema.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected12)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Rema'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: provider.toggleSelected13,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/rihanna.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected13)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Rihanna'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected14,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/uzi.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected14)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Lil Uzi Vert'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected15,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/weekend.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected15)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('The Weekend'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: provider.toggleSelected16,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/travis.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected16)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Travis Scott'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected17,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/doja.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected17)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Doja Cat'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.toggleSelected18,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/tyga.jpg',
                                  height: 100,
                                ),

                                if (provider.isselected18)
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(155, 30, 215, 96),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text('Tyga'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          if (count == 3)
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PodcastPicker()),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ),

                        Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
