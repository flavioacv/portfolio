import 'package:flutter/material.dart';
import 'package:portfolio/app/core/theme/colors/app_colors.dart';
import 'package:portfolio/app/core/theme/extensions/responsive_extension.dart';

class CommonCardWidget extends StatefulWidget {
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget children;
  final Color? boxShadow;
  final Gradient? gradient;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;

  const CommonCardWidget({
    this.padding,
    this.backgroundColor,
    required this.children,
    this.boxShadow,
    this.gradient,
    this.width,
    this.height,
    this.borderRadius,
    this.border,
    super.key,
  });

  @override
  State<CommonCardWidget> createState() => _CommonCardWidgetState();
}

class _CommonCardWidgetState extends State<CommonCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? AppColors.instance.blueDark,
        gradient: widget.gradient,
        borderRadius: widget.borderRadius ??
            BorderRadius.all(
              Radius.circular(3.w),
            ),
        border: widget.border,
      ),
      child: widget.children,
    );
  }
}
