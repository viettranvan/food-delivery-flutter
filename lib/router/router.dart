import 'package:flutter/material.dart';
import 'package:food_delivery/features/page_index.dart';
import 'package:go_router/go_router.dart';

part 'router_name.dart';

final appRouter = _AppRouter();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class _AppRouter {
  _AppRouter._internal();
  static final _singleton = _AppRouter._internal();
  factory _AppRouter() => _singleton;

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RouterName.home.path,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: RouterName.signIn.path,
        builder: (context, state) {
          return SignInPage();
        },
      ),
    ],
    redirect: (context, state) async {
      return null;

      // final accessToken = await appStorage.getValue(AppStorageKey.accessToken);
      // if ((accessToken ?? '').isEmpty) {
      //   return RouterName.loginPage.path;
      // } else {
      //   return state.path ?? '/';
      // }
    },
  );
}
