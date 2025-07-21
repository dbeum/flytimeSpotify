import 'package:flutter/material.dart';
import 'package:flytime_spotify/playback.dart';

import 'package:flytime_spotify/providers/expand.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:flytime_spotify/providers/slidetrack.dart';

import 'package:flytime_spotify/routes.dart';

import 'package:flytime_spotify/providers/selectedartist.dart';

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
        // Other theme settings...
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Dark theme
        useMaterial3: true,
        // Define your dark theme here
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 18, 18),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      themeMode: ThemeMode.system,
      home: Playback(),
      debugShowCheckedModeBanner: false,
    );
  }
}
