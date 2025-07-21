import 'package:flutter/material.dart';
import 'package:flytime_spotify/providers/selectedartist.dart';
import 'package:flytime_spotify/routing/searchextended.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: 380,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Color.fromARGB(255, 18, 18, 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    builder: (context) {
                      return FractionallySizedBox(
                        heightFactor: 1,
                        child: Searchextended(),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "What do you want to listen to?",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'Browse all',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.pink,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Music',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),

                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.green,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Podcast',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.purple,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Live Events',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),

                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Made For You',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.greenAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Upcoming',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),

                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.lightGreen,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  New Releases',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.red,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Afro',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),

                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.blueAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Hip-Hop',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.deepOrange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Charts',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
                  ),

                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.brown,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              '  Party',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/icon.png', height: 60),
                      ],
                    ),
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
