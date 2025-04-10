part of 'router.dart';

enum RouterName {
  home('/'),
  signIn('/auth'),
  ;

  final String path;
  const RouterName(this.path);
}
