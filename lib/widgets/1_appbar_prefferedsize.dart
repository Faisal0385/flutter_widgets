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
      home: MyAppBarExample(),
    );
  }
}

class MyAppBarExample extends StatelessWidget {
  const MyAppBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// How to make an appbar
      /// How to add preferredsize with size height
      appBar: PreferredSize(
        /// Add preferredsize
        preferredSize: Size.fromHeight(100),
        child: AppBar(

          /// How to add a title
          title: Text("Title"),

          /// How to center a title
          centerTitle: true,

          /// How to add background color
          backgroundColor: Colors.orangeAccent,

          /// How to add elevation in appbar
          elevation: 5,

          /// How to add leading action button
          leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),

          /// How to add shadow colors in appbar
          shadowColor: Colors.blue,

          /// How to add action button
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          ],

        ),
      ),
    );
  }
}
