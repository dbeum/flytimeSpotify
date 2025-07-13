import 'package:flutter/material.dart';
import 'package:flytime_spotify/home.dart';
import 'package:flytime_spotify/tastepicker/artistpicker.dart';
import 'package:flytime_spotify/providers/selectedartist.dart';
import 'package:flytime_spotify/signup/login.dart';
import 'package:flytime_spotify/signup/signup.dart';
import 'package:flytime_spotify/signup/signup1.dart';
import 'package:flytime_spotify/signup/signup2.dart';
import 'package:flytime_spotify/signup/signup3.dart';
import 'package:flytime_spotify/signup/signup4.dart';
import 'package:flytime_spotify/signup/signup5.dart';
import 'package:flytime_spotify/welcome.dart';
import 'package:provider/provider.dart';
import 'package:flytime_spotify/providers/visibility.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => passwordVisibilityProvider()),
        ChangeNotifierProvider(create: (_) => Selectedartistprovider()),
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
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),
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
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
