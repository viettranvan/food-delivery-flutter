import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/common/widgets/index.dart';
import 'package:food_delivery/features/home/presentation/widgets/index.dart';
import 'package:food_delivery/generated/l10n.dart';

const _address = 'Halal lab Office';
const _cardNumber = 2;
const _name = 'Ryuk';

const String couponTitle = 'Hurry Offers!';
const String couponId = '#1243CD2';
String couponDescripton = 'Use the cupon get 25% discount' * 5;

final _mockCategories = [
  _MockCategory('Pizza', 70),
  _MockCategory('Burger', 50),
  _MockCategory('Hotdog', 30),
  _MockCategory('Dooki', 22),
  _MockCategory('Noodle', 69),
];
final _mockRestaurant = [
  _MockRestaurant(
    'Rose Garden Restaurant',
    'Burger - Chiken - Riche - Wings',
    4.7,
    'Free',
    20,
  ),
  _MockRestaurant(
    'Masupilami',
    'Fish - Frog - Piranha - Wings',
    4.3,
    'Free',
    30,
  ),
  _MockRestaurant('Adora', 'Beef - Chiken - Pork - Sea Food', 4.8, 'Free', 45),
];

class _MockCategory {
  final String title;
  final double starting;

  _MockCategory(
    this.title,
    this.starting,
  );
}

class _MockRestaurant {
  final String name;
  final String subTitile;
  final double rating;
  final String shipingFee;
  final int duration;

  _MockRestaurant(
    this.name,
    this.subTitile,
    this.rating,
    this.shipingFee,
    this.duration,
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).deliverTo.toUpperCase(),
              style: AppTextStyle.of(
                size: 12,
                weight: AppFontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  _address,
                  style: AppTextStyle.of(size: 14),
                ),
                const SizedBox(width: 10),
                SvgPicture.asset(
                  AssetsPath.poligon1,
                  height: 12,
                  width: 12,
                ),
              ],
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(right: 24, top: 2, bottom: 2),
                decoration: BoxDecoration(
                  color: AppColors.primaryBlack,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: SvgPicture.asset(AssetsPath.cart),
                ),
              ),
              Positioned(
                top: 0,
                right: 24,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      _cardNumber.toString(),
                      style: AppTextStyle.of(
                        size: 15,
                        weight: AppFontWeight.bold,
                        color: AppColors.colourWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        centerTitle: false,
        leadingWidth: 70,
        toolbarHeight: 50,
        leading: Container(
          height: 45,
          width: 45,
          margin: const EdgeInsets.only(left: 24, top: 2, bottom: 2),
          decoration: BoxDecoration(
            color: AppColors.secondaryGrey.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: SvgPicture.asset(AssetsPath.menu),
          ),
        ),
        backgroundColor: AppColors.whiteBackground,
      ),
      backgroundColor: AppColors.whiteBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Greeting(name: _name),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AppTextfield(
                controller: TextEditingController(),
                hintText: S.of(context).hintSearchDishRestaurant,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 12,
                  ),
                  child: SvgPicture.asset(
                    AssetsPath.search,
                    height: 24,
                    width: 24,
                    colorFilter: const ColorFilter.mode(
                      AppColors.secondaryGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            BriefActionTitle(
              title: S.of(context).allCategories,
              seeAllCallback: () {
                CouponDialog.show(
                  context,
                  couponTitle: couponTitle,
                  couponId: couponId,
                  couponDescripton: couponDescripton,
                );
              },
            ),
            const SizedBox(height: 28),
            SizedBox(
              height: 170,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _mockCategories.length,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) => const SizedBox(width: 14),
                itemBuilder: (context, index) {
                  final item = _mockCategories[index];
                  return CategoryItemCard(
                    title: item.title,
                    starting: item.starting,
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            BriefActionTitle(
              title: S.of(context).openRestaurants,
              seeAllCallback: () {},
            ),
            const SizedBox(height: 28),
            SizedBox(
              height: 235,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemCount: _mockRestaurant.length,
                separatorBuilder: (_, __) => const SizedBox(width: 14),
                itemBuilder: (context, index) {
                  final item = _mockRestaurant[index];
                  return RestaurantItemCard(
                    name: item.name,
                    subTitile: item.subTitile,
                    rating: item.rating,
                    shipingFee: item.shipingFee,
                    duration: item.duration,
                  );
                },
              ),
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
