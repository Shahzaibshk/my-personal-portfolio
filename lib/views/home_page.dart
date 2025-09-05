import 'dart:html' as html; // only used on web
import 'dart:js' as js;

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper class/helper_class.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialButtons = <String>[
    AppAssets.whatsapp,
    AppAssets.linkedIn,
    AppAssets.github,
  ];
  final socialUrls = <String>[
    'https://wa.me/+923117682148?text=${Uri.encodeComponent('Hello, I am interested in your services.')}',
    'https://www.linkedin.com/in/shahzaib-ali-3241a530b?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
    'https://github.com/Shahzaibshk'
  ];

  int? socialBI;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildHomePersonalInfo(size),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation(),
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(flex: 1, child: buildHomePersonalInfo(size)),
          const SizedBox(width: 24),
          Flexible(
            flex: 1,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: const ProfileAnimation(),
            ),
          ),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(flex: 1, child: buildHomePersonalInfo(size)),
          const SizedBox(width: 24),
          Flexible(
            flex: 1,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 520),
              child: const ProfileAnimation(),
            ),
          ),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'Hello, It\'s Me',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Shahzaib Ali',
            style: AppTextStyles.headingStyles(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 6,
            children: [
              Text(
                'I\'m a ',
                style: AppTextStyles.montserratStyle(color: Colors.white),
              ),
              SizedBox(
                // cap width so animated text wraps nicely on small widths
                width: 260,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue),
                    ),
                  ],
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  isRepeatingAnimation: true,
                ),
              ),
            ],
          ),
        ),
        Constants.sizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: FadeInDown(
            duration: const Duration(milliseconds: 1600),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Text(
                'Specializing in cross-platform apps with Firebase integration, Riverpod state management, and custom UI/UX design, I build smooth, scalable, and user-focused mobile solutions.',
                style: AppTextStyles.normalStyle(),
              ),
            ),
          ),
        ),
        Constants.sizedBox(height: 22.0),
        
        // Social buttons
        FadeInUp(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            height: 48,
            child: ListView.separated(
              itemCount: socialButtons.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, _) => Constants.sizedBox(width: 8.0),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () async {
                    js.context.callMethod('open', [socialUrls[index]]);
                  },
                  onHover: (value) {
                    setState(() => socialBI = value ? index : null);
                  },
                  borderRadius: BorderRadius.circular(550.0),
                  hoverColor: AppColors.themeColor,
                  splashColor: AppColors.lawGreen,
                  child: buildSocialButton(
                    asset: socialButtons[index],
                    hover: socialBI == index,
                  ),
                );
              },
            ),
          ),
        ),
        Constants.sizedBox(height: 18.0),

        // Download CV
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
            onTap: () async {
              const assetPath = 'assets/cv/Shahzaib_Ali_CV.pdf';
              const fileName = 'Shahzaib_Ali_CV.pdf';
              if (kIsWeb) {
                final a = html.AnchorElement(href: assetPath)
                  ..download = fileName;
                a.click();
              } else {
                await launchUrl(Uri.parse(assetPath),
                    mode: LaunchMode.externalApplication);
              }
            },
            buttonName: 'Download CV',
          ),
        ),
      ],
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? AppColors.bgColor : AppColors.themeColor,
      ),
    );
  }
}
