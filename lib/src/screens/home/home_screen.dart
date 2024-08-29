import 'package:flutter/material.dart';
import 'package:shopbiked/src/common_widgets/custom_icon_button.dart';
import 'package:shopbiked/src/constants/app_sizes.dart';
import 'package:shopbiked/src/constants/assets.dart';
import 'package:shopbiked/src/screens/home/widgets/bike_promote_card.dart';
import 'package:shopbiked/src/theme/app_colors.dart';
import 'package:shopbiked/src/theme/text_style.dart';
import 'package:shopbiked/src/utils/hard_coded_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).height;

    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                return SizedBox(
                  height: MediaQuery.paddingOf(context).top,
                );
              }),
          Container(
            color: black,
            child: CustomPaint(
              size: Size(w, h),
              painter: CustomShapePainter(),
            ),
          ),
          Positioned(
            top: MediaQuery.paddingOf(context).top,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p24,
                    horizontal: Sizes.p16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Choose Your Bike".hardcoded,
                          style: TextStyles.titleLarge.copyWith(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        onTap: () {},
                        child: const Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const BikePromoteCard(),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = blue
      ..shader = selectedMenuLinear
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width * 0.70, size.height * 0.20)
      ..lineTo(0, size.height * 0.96)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height * 0.30)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
