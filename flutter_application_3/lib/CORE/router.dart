import 'package:go_router/go_router.dart';
import 'SCREENS/home_screens.dart';
import 'SCREENS/login_screens.dart';

final appRouter = GoRouter (
  initialLocation: '/login',
  routes: [
  GoRoute(path: '/login',
   builder: (context, state) => const LoginScreen(),
   ),

 GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(userName: state.extra as String),
  ),
]);