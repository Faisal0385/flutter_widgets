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
        /// To give padding to the screen
        child: Padding(
          /// give padding all side
          padding: const EdgeInsets.all(16),

          /// Adding sizebox widget to use the full width of the screen
          child: SizedBox(
            /// using the full width of the screen
            width: double.infinity,
            child: Wrap(
              /// For bring the boxes/items to the center
              alignment: WrapAlignment.center,

              /// For horizontal spacing
              spacing: 20,

              /// For vertical spacing
              runSpacing: 20,

              children: [
                /// Box 1
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text("Box 1"),
                  ),
                ),

                /// Box 2
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Box 2"),
                  ),
                ),

                /// Box 3
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: Center(
                    child: Text("Box 3"),
                  ),
                ),

                /// Box 4
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: Center(
                    child: Text("Box 4"),
                  ),
                ),

                /// Box 5
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                  child: Center(
                    child: Text("Box 5"),
                  ),
                ),

                /// Box 6
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text("Box 6"),
                  ),
                ),

                /// Box 1
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text("Box 1"),
                  ),
                ),

                /// Box 2
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Box 2"),
                  ),
                ),

                /// Box 3
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: Center(
                    child: Text("Box 3"),
                  ),
                ),

                /// Box 4
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: Center(
                    child: Text("Box 4"),
                  ),
                ),

                /// Box 5
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                  child: Center(
                    child: Text("Box 5"),
                  ),
                ),

                /// Box 6
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text("Box 6"),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
