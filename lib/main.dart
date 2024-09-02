import 'package:babyshower_invitation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    WebRoutes webRoutes = WebRoutes();
    return MaterialApp.router(
      title: 'Baby Shower Hannah Sofia',
      debugShowCheckedModeBanner: false,
      routeInformationParser: webRoutes.goRouter.routeInformationParser,
      routerDelegate: webRoutes.goRouter.routerDelegate,
      routeInformationProvider: webRoutes.goRouter.routeInformationProvider,
    );
  }
}
