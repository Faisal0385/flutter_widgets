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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Text Button
              TextButton(
                  onPressed: () {
                    print("Text Button");
                  },
                  child: Text("Text Button")),

              /// Elevated Button
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button");
                },
                child: Text("Elevated Button"),
              ),

              /// Outlined Button
              OutlinedButton(
                  onPressed: () {
                    print("Outlined Button");
                  },
                  child: Text("Outlined Button")),

              /// Floating Action Button
              FloatingActionButton(
                onPressed: () {
                  print("Floating Action Button");
                },
                child: Icon(Icons.add),
              ),

              /// Icon Button
              IconButton(
                onPressed: () {
                  print("Icon Button");
                },
                icon: Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
