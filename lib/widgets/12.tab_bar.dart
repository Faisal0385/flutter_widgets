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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: MyPractice(),
    );
  }
}

class MyPractice extends StatefulWidget {
  const MyPractice({Key? key}) : super(key: key);

  @override
  State<MyPractice> createState() => _MyPracticeState();
}

class _MyPracticeState extends State<MyPractice> {
  @override
  Widget build(BuildContext context) {
    /// Creates a default tab controller for the given child widget.
    return DefaultTabController(
      /// Length must be initiated
      length: 5,

      /// This give the starting tab value
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Tab Bar",
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),

          /// Add the tabbar widget
          bottom: const TabBar(
            /// if we want to make it scrollable
            isScrollable: true,

            /// add all the tabs
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                child: Text("Home"),
              ),
              Tab(
                icon: Icon(Icons.shop),
                child: Text("Shop"),
              ),
              Tab(
                icon: Icon(Icons.shopping_bag),
                child: Text("Cart"),
              ),
              Tab(
                icon: Icon(Icons.person),
                child: Text("Account"),
              ),
              Tab(
                icon: Icon(Icons.favorite),
                child: Text("Wish List"),
              ),
            ],
          ),
        ),
        body: SafeArea(
          /// Creates a page view with one child per tab.
          child: TabBarView(children: [
            /// child one
            Container(
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            /// child two
            Container(
              child: Center(
                  child: Text(
                "Shop",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),

            /// child three
            Container(
              child: Center(
                  child: Text(
                "Cart",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),

            /// child four
            Container(
              child: Center(
                  child: Text(
                "Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),

            /// child five
            Container(
              child: Center(
                  child: Text(
                "Wish List",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),
          ]),
        ),

        /// Add the tabbar widget
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.teal,
          ),
          margin: EdgeInsets.all(16),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white60,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  child: Text("Home"),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                  child: Text("Shop"),
                ),
                Tab(
                  icon: Icon(Icons.shopping_bag),
                  child: Text("Cart"),
                ),
                Tab(
                  icon: Icon(Icons.person),
                  child: Text("Account"),
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  child: Text("Wish List"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
