import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/router/router.dart';
import 'package:go_router/go_router.dart';

import 'widgets/index.dart';

class SpalshPage extends StatefulWidget {
  const SpalshPage({super.key});

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  void didChangeDependencies() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3)).then((_) {
        if (!mounted) return;
        context.replace(RouterName.onboarding.path);
      });
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: -180,
            left: -100,
            child: SizedBox(
              height: 300,
              width: 300,
              child: TopFanShapeAnimation(),
            ),
          ),
          const Positioned(
            bottom: -210,
            right: -210,
            child: SizedBox(
              height: 400,
              width: 400,
              child: BottomFanShapeAnimation(),
            ),
          ),
          Center(child: SvgPicture.asset(AssetsPath.logoFood)),
        ],
      ),
    );
  }
}
