import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tinderlitegg/discover_home.dart';

import 'matched.dart';

// design link: https://dribbble.com/shots/20671356-Dating-Mobile-Design-App

void main() {
  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
  ));
}

final _router = GoRouter(
  // initialLocation: "/matched",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DiscoverHome(),
    ),
    GoRoute(
      path: "/matched",
      builder: (context, state) => const MatchedScreen(),
    )
  ],
);
