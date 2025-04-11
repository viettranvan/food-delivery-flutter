import 'dart:async';

import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/features/auth/presentation/widgets/index.dart';
import 'package:food_delivery/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class VerificarionPage extends StatefulWidget {
  const VerificarionPage({super.key, required this.email});

  final String email;

  @override
  State<VerificarionPage> createState() => _VerificarionPageState();
}

class _VerificarionPageState extends State<VerificarionPage> {
  FocusNode focusNode = FocusNode();
  final textEditingController = TextEditingController();

  late Timer _countdownTimer;
  int _time = 60;

  @override
  void initState() {
    textEditingController.text = '';
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _countdownTimer.cancel();
  }

  void _startTimer() {
    const duration = Duration(seconds: 1);
    _countdownTimer = Timer.periodic(
      duration,
      (_) {
        setState(() {
          _time--;
        });
        if (_time == 0) {
          _countdownTimer.cancel();
        }
      },
    );
  }

  double calculateTextWidth(String text, TextStyle style) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.size.width;
  }

  Widget _renderOTPFiled({
    required int place,
    bool validate = true,
    required String initValue,
  }) {
    return Container(
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primaryMint,
        border: Border.all(
          color: validate ? AppColors.colourGrey : AppColors.colourRed,
        ),
      ),
      child: Center(
        child: Text(
          initValue,
          style: AppTextStyle.of(
            weight: AppFontWeight.bold,
            size: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textWidth = calculateTextWidth(
      S.of(context).resend,
      AppTextStyle.of(
        size: 14,
        weight: AppFontWeight.bold,
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ColoredBox(
        color: AppColors.primaryBlack,
        child: Stack(
          children: [
            const TopFanBlade(),
            CustomPaint(
              size: const Size(200, 100), // Chiều ngang/dọc hình chữ Z
              painter: DashedLinePainter(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10 * 3,
                color: AppColors.primaryColor.withValues(alpha: 0.3),
              ),
            ),
            Positioned(
              top: 50,
              left: 24,
              child: InkWell(
                onTap: () {
                  if (context.canPop()) {
                    context.pop();
                  }
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: AppColors.colourWhite,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: SvgPicture.asset(AssetsPath.back),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      const Spacer(flex: 4),
                      Text(
                        S.of(context).verification,
                        style: AppTextStyle.of(
                          size: 30,
                          color: AppColors.colourWhite,
                          weight: AppFontWeight.bold,
                        ),
                      ),
                      Text(
                        S.of(context).verificationSubtitle,
                        style: AppTextStyle.of(
                          size: 16,
                          color: AppColors.colourWhite,
                        ),
                      ),
                      Text(
                        widget.email,
                        style: AppTextStyle.of(
                          size: 16,
                          color: AppColors.colourWhite,
                          weight: AppFontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      color: AppColors.colourWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              S.of(context).code.toUpperCase(),
                              style: AppTextStyle.of(size: 13),
                            ),
                            const Spacer(),
                            Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Text(
                                  S.of(context).resend,
                                  style: AppTextStyle.of(
                                    size: 14,
                                    weight: AppFontWeight.bold,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    width: textWidth,
                                    height: 2,
                                    color: AppColors.defaultTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              ' ${S.of(context).inStr}',
                              style: AppTextStyle.of(size: 14),
                            ),
                            Text(
                              ' $_time',
                              style: AppTextStyle.of(size: 14),
                            ),
                            Text(
                              ' ${S.of(context).sec}',
                              style: AppTextStyle.of(size: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ...List.generate(
                              4,
                              (index) => _renderOTPFiled(
                                place: index,
                                // validate: state.errorMessage.isEmpty,
                                initValue: textEditingController
                                            .text.characters.length >
                                        index
                                    ? textEditingController.text.characters
                                        .elementAt(index)
                                    : '',
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: false,
                          maintainState: true,
                          maintainAnimation: true,
                          child: TextField(
                            focusNode: focusNode,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                RegExp('[0-9]'),
                              ),
                            ],
                            controller: textEditingController,
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            autofocus: true,
                            onChanged: (value) {
                              // verifyCode(context);
                              setState(() {});
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 62,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                S.of(context).verify.toUpperCase(),
                                style: AppTextStyle.of(
                                  size: 14,
                                  color: AppColors.colourWhite,
                                  weight: AppFontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
