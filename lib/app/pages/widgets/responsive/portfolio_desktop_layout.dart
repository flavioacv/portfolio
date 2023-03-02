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
                              child: SizedBox(
                                width: 20.w,
                                child: Image.network(
                                    "https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white",
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            GestureDetector(
                              onTap: () async {
                                _launchURL(
                                    'https://www.linkedin.com/in/flavioacv/');
                              },
                              child: SizedBox(
                                width: 22.w,
                                child: Image.network(
                                    "https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20.w),
              Column(children: [
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
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
