import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  static String errorpageName = '/errorPage';
  const ErrorPage({super.key, required this.title});

  final String title;

  @override
  State<ErrorPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ErrorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: const Text('Page not found'),
      )
    );
  }
}