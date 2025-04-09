import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/features/auth/presentation/pages/sign_in_page.dart';
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

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const dataSet = [
      _DataSet(
        title: 'All your favorites',
        subtitle:
            'Get all your loved foods in one once place, you just place the orer we do the rest',
        imagePath: AssetsPath.chooseFood,
      ),
      _DataSet(
        title: 'Order from choosen chef',
        subtitle:
            'Get all your loved foods in one once place, you just place the orer we do the rest',
        imagePath: AssetsPath.prepareFood,
      ),
      _DataSet(
        title: 'Free delivery offers',
        subtitle:
            'Get all your loved foods in one once place, you just place the orer we do the rest',
        imagePath: AssetsPath.deliveryFood,
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
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
                    Image.asset(
                      data.imagePath,
                      fit: BoxFit.cover,
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
          InkWell(
            onTap: () {
              if (index < dataSet.length - 1) {
                controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInPage(),
                  ),
                );
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
                  index == (dataSet.length - 1) ? "GET STARTED" : "NEXT",
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SignInPage(),
                ),
              );
            },
            child: Center(
              child: Text(
                index == (dataSet.length - 1) ? "" : "Skip",
                style: AppTextStyle.regular(
                  size: 14,
                  color: AppColors.primaryGrey,
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
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
