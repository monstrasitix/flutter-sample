import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [];

    for (var i = 0; i < 3; ++i) {
      items.add(BottomNavigationBarItem(
        label: "Label $i",
        icon: const Icon(Icons.business),
      ));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Application"),
        ),
        drawer: const Drawer(
          child: Text("Drawer content"),
        ),
        body: Center(
          child: Text(
            "$count",
            textScaleFactor: 3,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
        ),
      ),
    );
  }
}
