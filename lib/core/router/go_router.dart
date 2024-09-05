import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rsapps_website/features/home/presentation/pages/home_page.dart';

final rootnavigatorKey = GlobalKey<NavigatorState>();

final GoRouter goRouter = GoRouter(
  initialLocation: "/",
  navigatorKey: rootnavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
  ],
);
