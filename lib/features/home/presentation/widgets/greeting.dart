import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/generated/l10n.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text.rich(
        TextSpan(
          text: '${S.of(context).heyName(name)}, ',
          style: AppTextStyle.of(size: 16),
          children: [
            TextSpan(
              text: getGreeting(context),
              style: AppTextStyle.of(
                size: 16,
                weight: AppFontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getGreeting(BuildContext context) {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 5 && hour < 12) {
      return S.of(context).goodMorning;
    } else if (hour >= 12 && hour < 17) {
      return S.of(context).goodAfternoon;
    } else if (hour >= 17 && hour < 21) {
      return S.of(context).goodEvening;
    } else {
      return S.of(context).goodNight;
    }
  }
}
