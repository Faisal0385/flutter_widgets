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
        /// How to use Center Widget
        child: Center(
          child: Container(
            /// to give height to the container
            height: 200,

            /// to give width to the container
            width: 200,

            /// to give color to the container
            // color: Colors.blueAccent,

            /// to give a child widget in the container
            child: Center(
              child: Text(
                "Box 1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            /// to decorate the box container
            decoration: BoxDecoration(
              /// to give color to the container
              color: Colors.blueAccent,

              /// to give radius to the box container
              borderRadius: BorderRadius.circular(10),

              /// To give shadow to the box container
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
