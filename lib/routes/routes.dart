import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:router/screen/details_page.dart';
import 'package:router/screen/home_screen.dart';
import 'package:router/screen/login_page.dart';
import 'package:router/screen/map/map_screen.dart';
import 'package:router/screen/notification_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GoRouter route = GoRouter(
  errorBuilder: (context, state) {
    return Scaffold(
      body: Center(
        child: Text('Oops! Something went wrong.'),
      ),
    );
  },

  //  redirect: (context, state) {
  //   final isLoggingIn = state.matchedLocation == '/login';
  //   if (!isLoggedIn && !isLoggingIn) {
  //     return '/login/123/Guest';
  //   }
  //   if (isLoggedIn && isLoggingIn) {
  //     return '/home';
  //   }
  //   return null;
  // },

  navigatorKey: navigatorKey,
  initialLocation: '/map',
  routes: <RouteBase>[
    GoRoute(
      path: "/home",
      name: '/home',
      builder: (context, state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: "/details",
      name: '/details',
      builder: (context, state) {
        var data = state.extra as Map<String, dynamic>?;
        return DetailsScreen(
          title: data?['title'] ?? "n/a",
        );
      },
    ),
    GoRoute(
      path: "/map",
      name: '/map',
      builder: (context, state) {
        return MapScreen();
      },
    ),
    GoRoute(
      path: "/notification",
      name: '/notification',
      builder: (context, state) {
        return NotificationScreen();
      },
    ),
    GoRoute(
      path: "/login/:number/:name",
      name: '/login',
      builder: (context, state) {
        var data = state.pathParameters['number'];
        var name = state.pathParameters['name'];
        return LoginScreen(
          number: data,
          name: name,
        );
      },
    ),
  ],
);
