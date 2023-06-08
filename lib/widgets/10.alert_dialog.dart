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
          "Alert Dialog",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
      ),
      body: Center(
        /// Adding an Elevated Button
        child: ElevatedButton(
          onPressed: () {
            /// show dialog function
            showDialog(
              context: context,
              builder: (BuildContext context) {
                /// return the alert dialog
                return AlertDialog(
                  /// title of the alert box
                  title: Text("Do You Want To Delete?"),
                  content: Text("Pls press yes to confirm your action."),
                  actions: [
                    /// Cancel Button by text button widget
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel"),
                    ),

                    /// Yes Button by text button widget
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Center(child: Text("The Item is deleted!!!")),
                            backgroundColor: Colors.green,
                          ),
                        );
                        Navigator.of(context).pop();
                      },
                      child: Text("Yes"),
                    ),
                  ],
                );
              },
            );
          },

          /// Button text
          child: Text("Delete"),
        ),
      ),
    );
  }
}
