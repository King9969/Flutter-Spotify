import 'package:flutter/material.dart';
import 'package:spotify/Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData.dark().copyWith(
        // Customize the dark theme
        // You can modify any of the ThemeData properties here

        scaffoldBackgroundColor:
            Colors.black, // Set the background color to black
        // Add more theme customization as needed
      ),
      home: Scaffold(body: HomePage()),
    );
  }
}
