
import 'package:babyshower_invitation/views/home_screen.dart';
import 'package:go_router/go_router.dart';

class WebRoutes{


  final GoRouter goRouter = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[

      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen()
      ),


      // USE THIS CONFIGURATION TO SEND VALUES //
      // GoRoute(
      //   path: '/profile',
      //   builder: (context, state) {
      //     return ProfileScreen(
      //       username: state.uri.queryParameters['username']!
      //     );
      //   },
      // ),

  

    ]
  );



}