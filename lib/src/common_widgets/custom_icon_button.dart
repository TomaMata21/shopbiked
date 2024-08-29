import 'package:flutter/material.dart';
import 'package:shopbiked/src/constants/app_sizes.dart';
import 'package:shopbiked/src/theme/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Sizes.p48,
        width: Sizes.p48,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: selectedMenuLinear,
          borderRadius: BorderRadius.circular(Sizes.p12),
          boxShadow: selectedMenuShadow,
        ),
        child: child,
      ),
    );
  }
}
