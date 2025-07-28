import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flytime_spotify/album.dart';
import 'package:flytime_spotify/artist/about.dart';
import 'package:flytime_spotify/playlist/album.dart';
import 'package:flytime_spotify/providers/expand.dart';
import 'package:provider/provider.dart';

class Remamusic extends StatefulWidget {
  const Remamusic({super.key});

  @override
  State<Remamusic> createState() => _RemamusicState();
}

class _RemamusicState extends State<Remamusic> {
  @override
  Widget build(BuildContext context) {
    final expand = Provider.of<Expand>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: expand.isExpanded ? 220 : 250,
          child: expand.isExpanded
              ? Column(
                  children: [
                    Row(
                      children: [
                        Text('1'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Icona.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Track Name'), Text('1,234,567,900')],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('2'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Icona.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Track Name'), Text('1,234,567,900')],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('3'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Icona.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Track Name'), Text('1,234,567,900')],
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Text('1'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Icona.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Track Name'), Text('1,234,567,900')],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('2'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Icona.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Track Name'), Text('1,234,567,900')],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('3'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Icona.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Track Name'), Text('1,234,567,900')],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('4'),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/images/Icona.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Track Name'), Text('1,234,567,900')],
                        ),
                      ],
                    ),
                  ],
                ),
        ),

        GestureDetector(
          onTap: () {
            expand.toggleExpand();
          },
          child: Center(
            child: Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Center(
                child: expand.isExpanded ? Text('See more') : Text('See less'),
              ),
            ),
          ),
        ),
        Text(
          'Artist Pick',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AlbumPage(albumId: '27pA2FuPxbf7ukWvLhEvgV'),
              ),
            );
          },
          child: SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.9,

            child: Stack(
              children: [
                Image.asset(
                  'assets/images/rema2.jpeg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.69,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(360),
                            ),
                            child: Image.asset(
                              'assets/images/rema1.jpeg',
                              height: 25,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'There\'s something \'Bout U -out now',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/Icona.png',
                              height: 60,
                              width: 60,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Track Name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Track',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 40),
        Text(
          'About',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),

        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => About()),
            );
          },
          child: SizedBox(
            height: 350,
            width: MediaQuery.of(context).size.width * 0.9,

            child: Stack(
              children: [
                Positioned(
                  top: 30,

                  child: Image.asset(
                    'assets/images/rema.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Container(
                    height: 80,
                    width: 80,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(360)),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '346th',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'in the world',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '21,585,854 monthly listeners',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'Afrorave prodigy,Rema was introduced to the world in March 2019,with the release of his self-titled debut EP',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
