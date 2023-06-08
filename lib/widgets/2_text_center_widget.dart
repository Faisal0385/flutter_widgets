import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyPractice(),
    );
  }
}

class MyPractice extends StatelessWidget {
  const MyPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// How to change scaffold background
      backgroundColor: Colors.teal,

      /// How to use safearea & why to use it
      body: SafeArea(
        /// How to use Center Widget
        child: Center(
          /// How to use Text Widget
          child: Text(
            "Welcome To Our Store",
            style: TextStyle(
              /// Increase font size
              fontSize: 24,

              /// make the font bolder
              fontWeight: FontWeight.bold,

              /// adding background
              // backgroundColor: Colors.teal,

              /// giving space between letter
            ),
          ),
        ),
      ),
    );
  }
}
