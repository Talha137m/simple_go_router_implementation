import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static String thirdpageName = '/thirdPage';
  const ThirdPage({super.key, required this.title});

  final String title;

  @override
  State<ThirdPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ThirdPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is third page',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}