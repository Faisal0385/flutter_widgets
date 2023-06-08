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
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade100,
        centerTitle: true,
        title: const Text(
          "SnackBar",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    /// If you want to use margin property in snackbar
                    /// you should use behaviour SnackBarBehavior.floating property
                    /// This add empty space to surround the snack bar.
                    margin: EdgeInsets.all(20),
                    behavior: SnackBarBehavior.floating,

                    /// This allow padding to the content
                    padding: EdgeInsets.all(30),

                    /// This controls the size of the shadow below the snack bar.
                    elevation: 6.0,

                    /// The snack bar's background color.
                    backgroundColor: Colors.green,

                    /// The amount of time the snack bar should be displayed.
                    /// Defaults to 4.0s.
                    duration: Duration(seconds: 1),

                    /// To center the Item
                    content: Center(
                      /// Display the message
                      child: Text("Product added to the cart."),
                    ),
                  ),
                );
              },
              child: Icon(Icons.shopping_bag),
            ),
          ),
        ),
      ),
    );
  }
}
