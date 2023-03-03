import 'package:flutter/material.dart';
import 'package:portfolio/app/core/theme/colors/app_colors.dart';
import 'package:portfolio/app/core/theme/dimensions/common_media_query.dart';
import 'package:portfolio/app/core/theme/extensions/responsive_extension.dart';
import 'package:portfolio/app/core/widgets/common_text/common_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/widgets/common_card/common_card_widget.dart';

class PortfolioMobile extends StatelessWidget {
  const PortfolioMobile({super.key});

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.instance.black,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.w, top: 25.h, right: 20.w, bottom: 25.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonCardWidget(
                  height: 400.h,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  width: CommonMediaQuery.width(context),
                  children: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/myFoto.png',
                        scale: 2.5,
                      ),
                      SizedBox(height: 10.h),
                      Center(
                        child: CommonText(
                          text: 'Flavio Augusto Cruz Valdez',
                          fontSize: 16.p,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      CommonText(
                        text: 'Mobile Developer',
                        fontSize: 12.p,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              _launchURL('https://github.com/flavioacv');
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15.w,
                                  child: Image.asset("assets/logos/github.png",
                                      fit: BoxFit.fill),
                                ),
                                SizedBox(width: 1.w),
                                CommonText(
                                  text: 'Flavio A C Valdez',
                                  fontSize: 10.p,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 2.w),
                          GestureDetector(
                            onTap: () async {
                              _launchURL(
                                  'https://www.linkedin.com/in/flavioacv/');
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15.w,
                                  child: Image.asset(
                                      "assets/logos/linkedin.png",
                                      fit: BoxFit.fill),
                                ),
                                SizedBox(width: 1.w),
                                CommonText(
                                  text: 'Flavio Augusto',
                                  fontSize: 10.p,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                CommonCardWidget(
                  width: CommonMediaQuery.width(context),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  children: Padding(
                    padding: EdgeInsets.only(
                        left: 15.w, top: 20.h, right: 15.w, bottom: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: 'Skills',
                          fontSize: 20.p,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          child: Center(
                            child: Wrap(
                              spacing: 6.w,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: CommonCardWidget(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    backgroundColor: AppColors.instance.black,
                                    height: 40.h,
                                    width: 120,
                                    children: Row(
                                      children: [
                                        SizedBox(width: 10.w),
                                        SizedBox(
                                          width: 25,
                                          child: Image.asset(
                                              "assets/logos/dart.png",
                                              fit: BoxFit.fill),
                                        ),
                                        SizedBox(width: 2.6.w),
                                        CommonText(
                                          text: 'Dart',
                                          fontSize: 12.p,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: CommonCardWidget(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    backgroundColor: AppColors.instance.black,
                                    height: 40.h,
                                    width: 120,
                                    children: Row(
                                      children: [
                                        SizedBox(width: 10.w),
                                        SizedBox(
                                          width: 20,
                                          child: Image.asset(
                                              "assets/logos/flutter.png",
                                              fit: BoxFit.fill),
                                        ),
                                        SizedBox(width: 2.5.w),
                                        CommonText(
                                          text: 'Flutter',
                                          fontSize: 12.p,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: CommonCardWidget(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    backgroundColor: AppColors.instance.black,
                                    height: 40.h,
                                    width: 120,
                                    children: Row(
                                      children: [
                                        SizedBox(width: 5.w),
                                        SizedBox(
                                          width: 35,
                                          child: Image.asset(
                                              "assets/logos/firebase.png",
                                              fit: BoxFit.fill),
                                        ),
                                        CommonText(
                                          text: 'Firebase',
                                          fontSize: 12.p,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: CommonCardWidget(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    backgroundColor: AppColors.instance.black,
                                    height: 40.h,
                                    width: 120,
                                    children: Row(
                                      children: [
                                        SizedBox(width: 15.w),
                                        SizedBox(
                                          width: 20,
                                          child: Image.asset(
                                              "assets/logos/kotlin.png",
                                              fit: BoxFit.fill),
                                        ),
                                        SizedBox(width: 2.5.w),
                                        CommonText(
                                          text: 'Kotlin',
                                          fontSize: 12.p,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: CommonCardWidget(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    backgroundColor: AppColors.instance.black,
                                    height: 40.h,
                                    width: 120,
                                    children: Row(
                                      children: [
                                        SizedBox(width: 10.w),
                                        SizedBox(
                                          width: 25,
                                          child: Image.asset(
                                              "assets/logos/vue.png",
                                              fit: BoxFit.fill),
                                        ),
                                        SizedBox(width: 2.5.w),
                                        CommonText(
                                          text: 'Vue.js',
                                          fontSize: 12.p,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: CommonCardWidget(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    backgroundColor: AppColors.instance.black,
                                    height: 40.h,
                                    width: 120,
                                    children: Row(
                                      children: [
                                        SizedBox(width: 10.w),
                                        SizedBox(
                                          width: 25,
                                          child: Image.asset(
                                              "assets/logos/javascript.png",
                                              fit: BoxFit.fill),
                                        ),
                                        SizedBox(width: 2.5.w),
                                        CommonText(
                                          text: 'JavaScript',
                                          fontSize: 12.p,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: CommonCardWidget(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    backgroundColor: AppColors.instance.black,
                                    height: 40.h,
                                    width: 120,
                                    children: Row(
                                      children: [
                                        SizedBox(width: 10.w),
                                        SizedBox(
                                          width: 25,
                                          child: Image.asset(
                                              "assets/logos/git.png",
                                              fit: BoxFit.fill),
                                        ),
                                        SizedBox(width: 2.5.w),
                                        CommonText(
                                          text: 'Git',
                                          fontSize: 12.p,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                CommonCardWidget(
                  width: CommonMediaQuery.width(context),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  children: Padding(
                    padding: EdgeInsets.only(left: 15.w, top: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: 'Education',
                          fontSize: 20.p,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 30.h),
                        CommonText(
                          text: 'Software Engineer ',
                          fontSize: 15.p,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 10.h),
                        CommonText(
                          text: 'UNIGRAN in Dourados / MS - Brazil.',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w500,
                        ),
                        CommonText(
                          text: 'Jan 2016 - Dez 2019',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 30.h),
                        CommonText(
                          text: 'Industrial Automation Technician',
                          fontSize: 15.p,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 10.h),
                        CommonText(
                          text: 'SENAI in Dourados / MS - Brazil.',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w500,
                        ),
                        CommonText(
                          text: '2012 - 2015',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 30.h),
                        CommonText(
                          text: 'Courses',
                          fontSize: 20.p,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 30.h),
                        CommonText(
                          text: 'Flutter. Beginner',
                          fontSize: 15.p,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 10.h),
                        CommonText(
                          text: 'Flutterando',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w500,
                        ),
                        CommonText(
                          text: '2022',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 30.h),
                        CommonText(
                          text: 'Programming Logic with Dart',
                          fontSize: 15.p,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 10.h),
                        CommonText(
                          text: 'Flutterando',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w500,
                        ),
                        CommonText(
                          text: '2022',
                          fontSize: 12.p,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 30.h),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                CommonCardWidget(
                  height: 50.h,
                  width: CommonMediaQuery.width(context),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  children: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: CommonText(
                        text: 'Experiences & Projects',
                        fontSize: 20.p,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: CommonMediaQuery.width(context),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: CommonCardWidget(
                          height: 550.h,
                          width: CommonMediaQuery.width(context),
                          children: Padding(
                            padding: EdgeInsets.only(
                                left: 5.w, top: 22.h, right: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/portfolio.png',
                                  height: 300,
                                  width: CommonMediaQuery.width(
                                    context,
                                  ),
                                ),
                                SizedBox(height: 30.h),
                                CommonText(
                                  text: 'Portfolio - Flutter Web',
                                  fontSize: 16.p,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 10.h),
                                CommonText(
                                  text:
                                      "This project was created using Flutter Web and followed the best development practices to ensure a solid structure. The goal is to add this work to my personal portfolio, demonstrating my skills and experience in development.",
                                  fontSize: 10.p,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: CommonCardWidget(
                          height: 550.h,
                          width: CommonMediaQuery.width(context),
                          children: Padding(
                            padding: EdgeInsets.only(
                                left: 5.w, top: 22.h, right: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/xipp.png',
                                  height: 300,
                                  width: CommonMediaQuery.width(
                                    context,
                                  ),
                                ),
                                SizedBox(height: 30.h),
                                CommonText(
                                  text:
                                      'Xipp Seguros - Mobile Developer (Flutter)',
                                  fontSize: 16.p,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 10.h),
                                CommonText(
                                  text:
                                      "At Xipp Seguros, I had the opportunity to create applications from conception to the end of the development cycle, applying best programming practices, including clean architecture, MVVM pattern, among others.",
                                  fontSize: 10.p,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: CommonCardWidget(
                          height: 550.h,
                          width: CommonMediaQuery.width(context),
                          children: Padding(
                            padding: EdgeInsets.only(
                                left: 5.w, top: 22.h, right: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/havan.png',
                                  height: 300,
                                  width: CommonMediaQuery.width(
                                    context,
                                  ),
                                ),
                                SizedBox(height: 30.h),
                                CommonText(
                                  text:
                                      'Havan Labs - Mobile Developer (Kotlin)',
                                  fontSize: 16.p,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 10.h),
                                CommonText(
                                  text:
                                      "I had the opportunity to work at one of Brazil's largest retailers, Havan. I worked in the technology sector at the company's headquarters, using the Kotlin language for app development. During my work, I updated an old app, adding new features and improving the user experience.",
                                  fontSize: 10.p,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: CommonCardWidget(
                          height: 550.h,
                          width: CommonMediaQuery.width(context),
                          children: Padding(
                            padding: EdgeInsets.only(
                                left: 5.w, top: 22.h, right: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/inova.png',
                                  height: 300,
                                  width: CommonMediaQuery.width(
                                    context,
                                  ),
                                ),
                                SizedBox(height: 30.h),
                                CommonText(
                                  text:
                                      'Aceleradora Inova Unigran - FullStack ',
                                  fontSize: 16.p,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 10.h),
                                CommonText(
                                  text:
                                      "I was hired to work at the accelerator of the college where I studied, where I was able to help boost local and nationwide startups. At the company, I worked as a FullStack developer and started my career in mobile development with Flutter.",
                                  fontSize: 10.p,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
