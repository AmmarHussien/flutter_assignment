import 'package:flutter/material.dart';
import 'package:flutter_assignment/end.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  void _resetHandler() {
    setState(() {
      currentIndex = 0;
    });
  }

  int currentIndex = 0;
  List<String> titles = ['hello', "welcom", 'bye'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: currentIndex < titles.length
            ? Column(
                children: [
                  Text(titles[currentIndex]),
                  ElevatedButton(
                    child: const Text('next'),
                    onPressed: () {
                      setState(() {
                        currentIndex++;
                      });
                    },
                  )
                ],
              )
            : End(resetHandler: _resetHandler),
      ),
    );
  }
}
