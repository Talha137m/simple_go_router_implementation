import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_implementation/screens/my_home_page.dart';
import 'package:go_router_implementation/screens/third_page.dart';

class SecondPage extends StatefulWidget {
  static String secondpageName = '/secondPage';
   SecondPage({super.key, required this.title});

   String title=data;

  @override
  State<SecondPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {
  int _counter = 0;

  void _incrementCounter() {
    GoRouter.of(context).pushNamed(ThirdPage.thirdpageName);
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
              'Thsi is second page ',
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
