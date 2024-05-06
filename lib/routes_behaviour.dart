import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_implementation/my_app_routes.dart';
import 'package:go_router_implementation/screens/my_home_page.dart';
import 'package:go_router_implementation/screens/second_page.dart';
import 'package:go_router_implementation/screens/third_page.dart';

mixin RoutesBehaviour {
  static List<RouteBase> collectRoutes = [
    Routes(
      pagePath: MyHomePage.homepageName,
      page: const MyHomePage(title: 'This is home'),
    ),
    Routes(
      pagePath: SecondPage.secondpageName,
      page: SecondPage(title: 'THis is second'),
    ),
    Routes(
      pagePath: ThirdPage.thirdpageName,
      page: const ThirdPage(title: 'This is third page'),
    )
  ];
}

class Routes extends GoRoute {
  final String pagePath;
  final Widget page;
  Routes({required this.pagePath, required this.page})
      : super(
            path: pagePath,
            //handeled the back button
            onExit: (context, routeState) {
              return true;
            },
            pageBuilder: (context, routeState) {
              return CustomTransition(childWidget: page);
            });
}
