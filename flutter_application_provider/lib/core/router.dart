import 'package:flutter_application_provider/core/screens/name_list_screen.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter (
  initialLocation: '/login',
  routes: [
  GoRoute(path: '/login',
   builder: (context, state) =>  const NamesList(),
   ),]);

 