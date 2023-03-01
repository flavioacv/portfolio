import 'package:flutter/material.dart';
import 'package:portfolio/app/core/theme/colors/app_colors.dart';
import 'package:portfolio/app/core/theme/dimensions/common_media_query.dart';
import 'package:portfolio/app/core/theme/extensions/responsive_extension.dart';
import 'package:portfolio/app/core/widgets/common_card/common_card_widget.dart';
import 'package:portfolio/app/core/widgets/common_text/common_text.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.instance.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CommonCardWidget(
                    height: 300,
                    width: CommonMediaQuery.width(context, percent: 0.3),
                    children: Column(children: const []),
                  ),
                ],
              ),
              SizedBox(width: 20.w),
              Column(children: [
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
