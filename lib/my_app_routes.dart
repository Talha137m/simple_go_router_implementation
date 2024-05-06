import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_implementation/routes_behaviour.dart';
import 'package:go_router_implementation/screens/error_page.dart';
import 'package:go_router_implementation/screens/my_home_page.dart';
import 'package:go_router_implementation/screens/second_page.dart';
import 'package:go_router_implementation/screens/third_page.dart';

class MyAppRotes with RoutesBehaviour {
 static  GoRouter router() {
    GoRouter routes = GoRouter(
      routes: RoutesBehaviour.collectRoutes
    //   routes: [
    //   GoRoute(
    //     name: MyHomePage.homepageName,
    //     pagePath: '/',
    //     pageBuilder: (context, state) {
    //       return const MaterialPage(
    //           child: MyHomePage(title: 'this is homepage'));
    //     },
    //   ),
    //   GoRoute(
    //     pagePath: '/secondPage',
    //     name: SecondPage.secondpageName,
    //     pageBuilder: (context, state) {
    //       var value = state.extra as dynamic;
    //       print(value);
    //       return MaterialPage(
    //         child: SecondPage(title: value ?? data),
    //       );
    //     },
    //   ),
    //   GoRoute(
    //     pagePath: '/thirdPage',
    //     name: ThirdPage.thirdpageName,
    //     pageBuilder: (context, state) {
    //       return CustomTransition(
    //         childWidget: const ThirdPage(title: 'this is third page'),
    //       );
    //     },
    //   ),
    // ]
    , errorPageBuilder: _errorPageBuilder);
    return routes;
  }

  static Page _errorPageBuilder(BuildContext context, GoRouterState state) {
    return CustomTransition(
      key: ValueKey(ErrorPage.errorpageName),
      childWidget: const ErrorPage(title: 'this is error page'),
    );
  }
}

class CustomTransition extends CustomTransitionPage {
  final Widget childWidget;
  CustomTransition({required this.childWidget, super.key})
      : super(
            transitionDuration: const Duration(seconds: 1),
            reverseTransitionDuration: const Duration(seconds: 1),
            child: childWidget,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            });
}

  // final Widget child;
  // static Tween<double> tween=Tween<double>(begin: 0,end: 1);
  // CustomTransition({required this.child}):super(
  //   transitionDuration: const Duration(seconds: 1),
  //   pageBuilder: (context,animation,secondaryAnimation){
  //     return child;
  //   },
  //   transitionsBuilder: (context,animation,secondaryAnimation,child){
  //     return ScaleTransition(scale:tween.animate(secondaryAnimation),child: child,);
  //   },
  //   reverseTransitionDuration: const Duration(seconds: 1),
  // );
