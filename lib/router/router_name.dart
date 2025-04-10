part of 'router.dart';

enum RouterName {
  home('/'),
  onboarding('/onboarding'),
  signIn('/auth/signin'),
  signUp('/auth/signup'),
  forgotPassword('/auth/fotgot-password'),
  verification('/auth/verification'),
  ;

  final String path;
  const RouterName(this.path);
}
