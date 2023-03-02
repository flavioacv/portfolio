import 'package:flutter/material.dart';
import 'package:portfolio/app/core/responsive/responsive_layout.dart';
import 'package:portfolio/app/pages/widgets/responsive/portfolio_desktop_layout.dart';
import 'package:portfolio/app/pages/widgets/responsive/portfolio_mobile_layout.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: PortfolioMobile(),
      tabletBody: PortfolioDesktop(),
      desktopBody: PortfolioDesktop(),
    );
  }
}
