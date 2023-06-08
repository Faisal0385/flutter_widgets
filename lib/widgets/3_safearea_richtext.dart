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
      /// How to use safearea & why to use it
      body: SafeArea(
        /// How to use Center widgets
        child: Center(
          /// How to use Rich Text widgets
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: "Don't have account?",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            TextSpan(text: " - "),
            TextSpan(
                text: "Sign-up",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    color: Colors.grey)),
          ])),
        ),
      ),
    );
  }
}
