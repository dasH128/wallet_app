import 'package:go_router/go_router.dart';
import 'package:wallet_app/presentation/screens/screens.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
]);
