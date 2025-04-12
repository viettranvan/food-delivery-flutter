part of 'router.dart';

enum RouterName {
  splash('/'),
  onboarding('/onboarding'),
  signIn('/auth/signin'),
  signUp('/auth/signup'),
  forgotPassword('/auth/fotgot-password'),
  verification('/auth/verification'),
  home('/home'),
  ;

  final String path;
  const RouterName(this.path);
}
