import 'package:flutter/material.dart';
import 'package:food_delivery/features/home/presentation/pages/home_page.dart';
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
        path: RouterName.splash.path,
        builder: (context, state) => const SpalshPage(),
      ),
      GoRoute(
        path: RouterName.onboarding.path,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: RouterName.signIn.path,
        builder: (context, state) {
          return const SignInPage();
        },
      ),
      GoRoute(
        path: RouterName.signUp.path,
        builder: (context, state) {
          return const SignUpPage();
        },
      ),
      GoRoute(
        path: RouterName.forgotPassword.path,
        builder: (context, state) {
          return const ForgotPasswordPage();
        },
      ),
      GoRoute(
        path: RouterName.verification.path,
        builder: (context, state) {
          final email = state.extra! as String;
          return VerificarionPage(email: email);
        },
      ),
      GoRoute(
        path: RouterName.home.path,
        builder: (context, state) {
          return const HomePage();
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
