import 'package:flutter/material.dart';

class SplashScreen {
  static const TextStyle splashtext = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

class OnboardingText {
  static const TextStyle heading = TextStyle(
    fontSize: 22,
    letterSpacing: 1,
    wordSpacing: 1,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
    wordSpacing: 1,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 16,
    color: Colors.grey,
  );
}

class AuthText {
  // Heading text (like "Login", "Sign Up")
  static const TextStyle heading = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  // Sub-heading text (like "Welcome back", "Create your account")
  static const TextStyle subHeading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  // Input field label text
  static const TextStyle label = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  // Small text (like "Forgot password?", "Already have an account?")
  static const TextStyle small = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.blueGrey,
  );
  static const TextStyle Smallsecond = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.red,
  );
  // Button text
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

// textstyel.dart
class AppTextStyle {
  static const TextStyle logintext = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}

class commoantext {
  static const TextStyle maincommantext = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}

class CommonTextStyle {
  // Bold Text
  static const TextStyle bold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // Semi Bold Text
  static const TextStyle semiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.red,
  );

  // Medium Text
  static const TextStyle medium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  // Regular Text
  static const TextStyle regular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  // Small Text
  static const TextStyle small = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  );

  // Optional: Colored Bold
  static TextStyle coloredBold(Color color) => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle Details =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black);
}
