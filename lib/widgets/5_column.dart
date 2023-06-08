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
          /// How to use Column Widget
          child: Column(
            /// to bring the items in the center in the y-axis
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              /// wrapping the box 1 with padding item
              Padding(
                padding: const EdgeInsets.all(8.0),

                /// box 1
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text("Box 1")),
                ),
              ),

              /// to seperate the two container
              Divider(
                /// color transparent
                color: Colors.transparent,
              ),

              /// wrapping the box 1 with padding item
              Padding(
                padding: const EdgeInsets.all(8.0),

                /// box 2
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text("Box 2")),
                ),
              ),

              /// to seperate the two container
              Divider(
                /// color transparent
                color: Colors.transparent,
              ),

              /// wrapping the box 3 with padding item
              Padding(
                padding: const EdgeInsets.all(8.0),

                /// box 3
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text("Box 3")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
