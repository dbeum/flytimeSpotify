import 'package:flutter/material.dart';

import 'package:flytime_spotify/navbar.dart';
import 'package:flytime_spotify/playback/playback.dart';
import 'package:flytime_spotify/providers/download.dart';
import 'package:flytime_spotify/providers/expand.dart';
import 'package:flytime_spotify/providers/like.dart';
import 'package:flytime_spotify/providers/miniplayer.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:flytime_spotify/providers/shuffle.dart';
import 'package:flytime_spotify/providers/slidetrack.dart';
import 'package:flytime_spotify/providers/selectedartist.dart';

import 'package:flytime_spotify/routing/home.dart';
import 'package:flytime_spotify/welcome.dart';
import 'package:provider/provider.dart';
import 'package:flytime_spotify/providers/visibility.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => passwordVisibilityProvider()),
        ChangeNotifierProvider(create: (_) => Selectedartistprovider()),
        ChangeNotifierProvider(create: (_) => Expand()),
        ChangeNotifierProvider(create: (_) => PlayProvider()),
        ChangeNotifierProvider(create: (_) => SlidetrackProvider()),
        ChangeNotifierProvider(create: (_) => likeProvider()),
        ChangeNotifierProvider(create: (_) => downloadProvider()),
        ChangeNotifierProvider(create: (_) => ShuffleProvider()),
        ChangeNotifierProvider(create: (_) => MiniPlayerProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 18, 18),
        primarySwatch: Colors.deepOrange,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,

        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 18, 18),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      themeMode: ThemeMode.system,
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
