part of 'router.dart';

enum RouterName {
  home('/'),
  onboarding('/onboarding'),
  signIn('/auth'),
  ;

  final String path;
  const RouterName(this.path);
}
