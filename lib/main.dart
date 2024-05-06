import 'package:flutter/material.dart';
import 'package:go_router_implementation/my_app_routes.dart';
import 'package:go_router_implementation/screens/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: MyAppRotes.router().routeInformationParser,
      routerDelegate: MyAppRotes.router().routerDelegate,
    );
  }
}
