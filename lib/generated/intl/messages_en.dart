// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(Appname) =>
      "${Appname} WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP";

  static String m1(name) => "Hey ${name}";

  static String m2(discount) => "Use the cupon get ${discount}% discount";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accessLocation":
            MessageLookupByLibrary.simpleMessage("Access Location"),
        "accessLocationSubtitle": m0,
        "addToCart": MessageLookupByLibrary.simpleMessage("Add to Cart"),
        "allCategories": MessageLookupByLibrary.simpleMessage("All Categories"),
        "deliverTo": MessageLookupByLibrary.simpleMessage("Deliver to"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "dontHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailHint": MessageLookupByLibrary.simpleMessage("example@gmail.com"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot Password"),
        "forgotPasswordSubtitle": MessageLookupByLibrary.simpleMessage(
            "Please sign in to your existing account"),
        "free": MessageLookupByLibrary.simpleMessage("Free"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
        "goodAfternoon": MessageLookupByLibrary.simpleMessage("Good Afternoon"),
        "goodEvening": MessageLookupByLibrary.simpleMessage("Good Evening"),
        "goodMorning": MessageLookupByLibrary.simpleMessage("Good Morning"),
        "goodNight": MessageLookupByLibrary.simpleMessage("Good Night"),
        "gotIt": MessageLookupByLibrary.simpleMessage("Got it"),
        "heyName": m1,
        "hintSearchDishRestaurant":
            MessageLookupByLibrary.simpleMessage("Search dishes, restaurants"),
        "hurryOffer": MessageLookupByLibrary.simpleMessage("Hurry Offers!"),
        "inStr": MessageLookupByLibrary.simpleMessage("in"),
        "ingredients": MessageLookupByLibrary.simpleMessage("Ingredients"),
        "login": MessageLookupByLibrary.simpleMessage("Log In"),
        "loginSubtitle": MessageLookupByLibrary.simpleMessage(
            "Please sign in to your existing account"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nameHint": MessageLookupByLibrary.simpleMessage("Jon Doe"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "onboardingSubTitle1": MessageLookupByLibrary.simpleMessage(
            "Get all your loved foods in one once place, you just place the order we do the rest"),
        "onboardingSubTitle2": MessageLookupByLibrary.simpleMessage(
            "Pick your favorite chefs and enjoy meals made with care, just for you"),
        "onboardingSubTitle3": MessageLookupByLibrary.simpleMessage(
            "Enjoy delicious dishes delivered to your door without extra cost"),
        "onboardingTitle1":
            MessageLookupByLibrary.simpleMessage("All your favorites"),
        "onboardingTitle2":
            MessageLookupByLibrary.simpleMessage("Order from choosen chef"),
        "onboardingTitle3":
            MessageLookupByLibrary.simpleMessage("Free delivery offers"),
        "openRestaurants":
            MessageLookupByLibrary.simpleMessage("Open Restaurants"),
        "or": MessageLookupByLibrary.simpleMessage("Or"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "popularFastFood":
            MessageLookupByLibrary.simpleMessage("Popular Fast Food"),
        "reTypePassword":
            MessageLookupByLibrary.simpleMessage("Re-type Password"),
        "recentKeyword":
            MessageLookupByLibrary.simpleMessage("Recent Keywords"),
        "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
        "resend": MessageLookupByLibrary.simpleMessage("Resend"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "sec": MessageLookupByLibrary.simpleMessage("sec"),
        "seeAll": MessageLookupByLibrary.simpleMessage("See All"),
        "sendCode": MessageLookupByLibrary.simpleMessage("Send Code"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "signUpSubtitle": MessageLookupByLibrary.simpleMessage(
            "Please sign up to get started"),
        "size": MessageLookupByLibrary.simpleMessage("Size"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "starting": MessageLookupByLibrary.simpleMessage("Starting"),
        "useCuponGetDiscount": m2,
        "verification": MessageLookupByLibrary.simpleMessage("Verification"),
        "verificationSubtitle": MessageLookupByLibrary.simpleMessage(
            "We have sent a code to your email"),
        "verify": MessageLookupByLibrary.simpleMessage("Verify")
      };
}
