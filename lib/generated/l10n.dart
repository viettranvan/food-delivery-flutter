// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `All your favorites`
  String get onboardingTitle1 {
    return Intl.message(
      'All your favorites',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Order from choosen chef`
  String get onboardingTitle2 {
    return Intl.message(
      'Order from choosen chef',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Free delivery offers`
  String get onboardingTitle3 {
    return Intl.message(
      'Free delivery offers',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Get all your loved foods in one once place, you just place the order we do the rest`
  String get onboardingSubTitle1 {
    return Intl.message(
      'Get all your loved foods in one once place, you just place the order we do the rest',
      name: 'onboardingSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Pick your favorite chefs and enjoy meals made with care, just for you`
  String get onboardingSubTitle2 {
    return Intl.message(
      'Pick your favorite chefs and enjoy meals made with care, just for you',
      name: 'onboardingSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy delicious dishes delivered to your door without extra cost`
  String get onboardingSubTitle3 {
    return Intl.message(
      'Enjoy delicious dishes delivered to your door without extra cost',
      name: 'onboardingSubTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message(
      'Log In',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to your existing account`
  String get loginSubtitle {
    return Intl.message(
      'Please sign in to your existing account',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `example@gmail.com`
  String get emailHint {
    return Intl.message(
      'example@gmail.com',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to your existing account`
  String get forgotPasswordSubtitle {
    return Intl.message(
      'Please sign in to your existing account',
      name: 'forgotPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Please sign up to get started`
  String get signUpSubtitle {
    return Intl.message(
      'Please sign up to get started',
      name: 'signUpSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get sendCode {
    return Intl.message(
      'Send Code',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a code to your email`
  String get verificationSubtitle {
    return Intl.message(
      'We have sent a code to your email',
      name: 'verificationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `in`
  String get inStr {
    return Intl.message(
      'in',
      name: 'inStr',
      desc: '',
      args: [],
    );
  }

  /// `sec`
  String get sec {
    return Intl.message(
      'sec',
      name: 'sec',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Jon Doe`
  String get nameHint {
    return Intl.message(
      'Jon Doe',
      name: 'nameHint',
      desc: '',
      args: [],
    );
  }

  /// `Re-type Password`
  String get reTypePassword {
    return Intl.message(
      'Re-type Password',
      name: 'reTypePassword',
      desc: '',
      args: [],
    );
  }

  /// `Access Location`
  String get accessLocation {
    return Intl.message(
      'Access Location',
      name: 'accessLocation',
      desc: '',
      args: [],
    );
  }

  /// `{Appname} WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP`
  String accessLocationSubtitle(Object Appname) {
    return Intl.message(
      '$Appname WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP',
      name: 'accessLocationSubtitle',
      desc: '',
      args: [Appname],
    );
  }

  /// `Deliver to`
  String get deliverTo {
    return Intl.message(
      'Deliver to',
      name: 'deliverTo',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning`
  String get goodMorning {
    return Intl.message(
      'Good Morning',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `Good Afternoon`
  String get goodAfternoon {
    return Intl.message(
      'Good Afternoon',
      name: 'goodAfternoon',
      desc: '',
      args: [],
    );
  }

  /// `Good Evening`
  String get goodEvening {
    return Intl.message(
      'Good Evening',
      name: 'goodEvening',
      desc: '',
      args: [],
    );
  }

  /// `Good Night`
  String get goodNight {
    return Intl.message(
      'Good Night',
      name: 'goodNight',
      desc: '',
      args: [],
    );
  }

  /// `Hey {name}`
  String heyName(Object name) {
    return Intl.message(
      'Hey $name',
      name: 'heyName',
      desc: '',
      args: [name],
    );
  }

  /// `Search dishes, restaurants`
  String get hintSearchDishRestaurant {
    return Intl.message(
      'Search dishes, restaurants',
      name: 'hintSearchDishRestaurant',
      desc: '',
      args: [],
    );
  }

  /// `All Categories`
  String get allCategories {
    return Intl.message(
      'All Categories',
      name: 'allCategories',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message(
      'See All',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Starting`
  String get starting {
    return Intl.message(
      'Starting',
      name: 'starting',
      desc: '',
      args: [],
    );
  }

  /// `Open Restaurants`
  String get openRestaurants {
    return Intl.message(
      'Open Restaurants',
      name: 'openRestaurants',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Hurry Offers!`
  String get hurryOffer {
    return Intl.message(
      'Hurry Offers!',
      name: 'hurryOffer',
      desc: '',
      args: [],
    );
  }

  /// `Use the cupon get {discount}% discount`
  String useCuponGetDiscount(Object discount) {
    return Intl.message(
      'Use the cupon get $discount% discount',
      name: 'useCuponGetDiscount',
      desc: 'Use the cupon get {discount}% discount',
      args: [discount],
    );
  }

  /// `Got it`
  String get gotIt {
    return Intl.message(
      'Got it',
      name: 'gotIt',
      desc: '',
      args: [],
    );
  }

  /// `Recent Keywords`
  String get recentKeyword {
    return Intl.message(
      'Recent Keywords',
      name: 'recentKeyword',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Popular Fast Food`
  String get popularFastFood {
    return Intl.message(
      'Popular Fast Food',
      name: 'popularFastFood',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get addToCart {
    return Intl.message(
      'Add to Cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get ingredients {
    return Intl.message(
      'Ingredients',
      name: 'ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
