import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/generated/l10n.dart';
import 'package:food_delivery/router/router.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin {
  late PageController controller;
  int index = 0;
  late final List<_DataSet> dataSet;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void didChangeDependencies() {
    dataSet = [
      _DataSet(
        title: S.of(context).onboardingTitle1,
        subtitle: S.of(context).onboardingSubTitle1,
        imagePath: AssetsPath.chooseFood,
      ),
      _DataSet(
        title: S.of(context).onboardingTitle2,
        subtitle: S.of(context).onboardingSubTitle2,
        imagePath: AssetsPath.prepareFood,
      ),
      _DataSet(
        title: S.of(context).onboardingTitle3,
        subtitle: S.of(context).onboardingSubTitle3,
        imagePath: AssetsPath.deliveryFood,
      ),
    ];
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: PageView.builder(
              controller: controller,
              itemCount: dataSet.length,
              onPageChanged: (value) {
                setState(() => index = value);
              },
              itemBuilder: (context, index) {
                final data = dataSet[index];
                return Column(
                  children: [
                    Flexible(
                      child: Image.asset(
                        data.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          SizedBox(height: 32),
                          Text(
                            data.title,
                            style: AppTextStyle.extraBold(size: 24),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 18),
                          Text(
                            data.subtitle,
                            style: AppTextStyle.regular(size: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Spacer(flex: 1),
                Container(
                  width: double.infinity,
                  color: AppColors.colourWhite,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: SmoothPageIndicator(
                    count: dataSet.length,
                    controller: controller,
                    effect: const WormEffect(
                      type: WormType.thin,
                      activeDotColor: AppColors.primaryColor,
                      dotColor: Color(0xFFD9D9D9),
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 12,
                    ),
                  ),
                ),
                const Spacer(flex: 2),
                InkWell(
                  onTap: () {
                    if (index < dataSet.length - 1) {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else {
                      context.replace(RouterName.signIn.path);
                    }
                  },
                  child: Container(
                    height: 62,
                    margin: EdgeInsets.only(bottom: 16, left: 24, right: 24),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        (index == (dataSet.length - 1)
                                ? S.of(context).getStarted
                                : S.of(context).next)
                            .toUpperCase(),
                        style: AppTextStyle.bold(
                          size: 14,
                          color: AppColors.colourWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.replace(RouterName.signIn.path);
                  },
                  child: Center(
                    child: Text(
                      index == (dataSet.length - 1) ? "" : S.of(context).skip,
                      style: AppTextStyle.regular(
                        size: 14,
                        color: AppColors.primaryGrey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).padding.bottom > 14
                        ? MediaQuery.of(context).padding.bottom
                        : 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DataSet {
  final String title;
  final String subtitle;
  final String imagePath;

  const _DataSet({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}
