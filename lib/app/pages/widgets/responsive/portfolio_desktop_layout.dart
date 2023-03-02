import 'package:flutter/material.dart';
import 'package:portfolio/app/core/theme/colors/app_colors.dart';
import 'package:portfolio/app/core/theme/dimensions/common_media_query.dart';
import 'package:portfolio/app/core/theme/extensions/responsive_extension.dart';
import 'package:portfolio/app/core/widgets/common_card/common_card_widget.dart';
import 'package:portfolio/app/core/widgets/common_text/common_text.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioDesktop extends StatelessWidget {
  const PortfolioDesktop({super.key});

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
          padding: EdgeInsets.only(left: 5.w, top: 25.h, right: 5.w),
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CommonCardWidget(
                      height: 400.h,
                      width: CommonMediaQuery.width(context, percent: 0.3),
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
                              fontSize: 20.p,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          CommonText(
                            text: 'Mobile Developer',
                            fontSize: 15.p,
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
                                      width: 5.w,
                                      child: Image.asset(
                                          "assets/logos/github.png",
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
                                      width: 5.w,
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
                      height: 200.h,
                      width: CommonMediaQuery.width(context, percent: 0.3),
                      children: Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: 'Habilidades',
                              fontSize: 20.p,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width:
                                  CommonMediaQuery.width(context, percent: 0.3),
                              child: Wrap(
                                spacing: 5.w,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.h),
                                    child: CommonCardWidget(
                                      backgroundColor: AppColors.instance.black,
                                      height: 30.h,
                                      width: 30.w,
                                      children: Row(
                                        children: [
                                          SizedBox(width: 2.w),
                                          SizedBox(
                                            width: 5.w,
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
                                      backgroundColor: AppColors.instance.black,
                                      height: 30.h,
                                      width: 30.w,
                                      children: Row(
                                        children: [
                                          SizedBox(width: 2.w),
                                          SizedBox(
                                            width: 4.w,
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
                                      backgroundColor: AppColors.instance.black,
                                      height: 30.h,
                                      width: 30.w,
                                      children: Row(
                                        children: [
                                          SizedBox(width: 2.w),
                                          SizedBox(
                                            width: 8.w,
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
                                      backgroundColor: AppColors.instance.black,
                                      height: 30.h,
                                      width: 30.w,
                                      children: Row(
                                        children: [
                                          SizedBox(width: 2.w),
                                          SizedBox(
                                            width: 5.w,
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
                                      backgroundColor: AppColors.instance.black,
                                      height: 30.h,
                                      width: 30.w,
                                      children: Row(
                                        children: [
                                          SizedBox(width: 2.w),
                                          SizedBox(
                                            width: 5.w,
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
                                      backgroundColor: AppColors.instance.black,
                                      height: 30.h,
                                      width: 30.w,
                                      children: Row(
                                        children: [
                                          SizedBox(width: 2.w),
                                          SizedBox(
                                            width: 5.w,
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    CommonCardWidget(
                      height: 300.h,
                      width: CommonMediaQuery.width(context, percent: 0.3),
                      children: Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: 'Cursos',
                              fontSize: 20.p,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  children: [
                    SizedBox(height: 30.h),
                    CommonCardWidget(
                      height: 100,
                      width: CommonMediaQuery.width(context, percent: 0.62),
                      children: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: CommonText(
                            text: 'Projetos',
                            fontSize: 20.p,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: CommonMediaQuery.width(context, percent: 0.62),
                      child: Wrap(
                        spacing: 7.w,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: CommonCardWidget(
                              height: 300.h,
                              width:
                                  CommonMediaQuery.width(context, percent: 0.3),
                              children: Padding(
                                padding: EdgeInsets.only(left: 5.w, top: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(
                                      text: 'Post 1',
                                      fontSize: 20.p,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: CommonCardWidget(
                              height: 300.h,
                              width:
                                  CommonMediaQuery.width(context, percent: 0.3),
                              children: Padding(
                                padding: EdgeInsets.only(left: 5.w, top: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(
                                      text: 'Post 2',
                                      fontSize: 20.p,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: CommonCardWidget(
                              height: 300.h,
                              width:
                                  CommonMediaQuery.width(context, percent: 0.3),
                              children: Padding(
                                padding: EdgeInsets.only(left: 5.w, top: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(
                                      text: 'Post 3',
                                      fontSize: 20.p,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: CommonCardWidget(
                              height: 300.h,
                              width:
                                  CommonMediaQuery.width(context, percent: 0.3),
                              children: Padding(
                                padding: EdgeInsets.only(left: 5.w, top: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(
                                      text: 'Post 4',
                                      fontSize: 20.p,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
