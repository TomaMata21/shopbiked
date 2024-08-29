import 'package:flutter/material.dart';
import 'package:shopbiked/src/constants/app_sizes.dart';
import 'package:shopbiked/src/constants/assets.dart';
import 'package:shopbiked/src/theme/app_colors.dart';
import 'package:shopbiked/src/theme/text_style.dart';
import 'package:shopbiked/src/utils/hard_coded_extension.dart';

class BikePromoteCard extends StatelessWidget {
  const BikePromoteCard({super.key});

  @override
  Widget build(BuildContext context) {

    final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).height;
    return  Container(
      width: w * 0.95,
      height: h * 0.3,
      decoration: BoxDecoration(
        // gradient: cardLinear,
        borderRadius: BorderRadius.circular(
          Sizes.p12,
        ),
      ),
      child: CustomPaint(
        painter: CustomHeaderCardShapePainter(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: (h * 0.3) * 0.05,
            ),
            Expanded(
              child: Image.asset(
                Assets.bike3,
                // fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.p16,
                vertical: Sizes.p12,
              ),
              child: Text(
                "30 % Off".hardcoded,
                textAlign: TextAlign.start,
                style: TextStyles.headlineSmall.copyWith(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: (h * 0.3) * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}


class CustomHeaderCardShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = cardLinearBlack
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.inner, 100);

    final strokePaint = Paint()
      ..shader = cardStrokeLinearBlack
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path()
      ..moveTo(size.width * 0.05, 0)
      ..arcToPoint(
        Offset(0, size.height * 0.15),
        radius: const Radius.circular(38),
        clockwise: false,
      )
      ..lineTo(0, size.height * 0.9)
      ..arcToPoint(
        Offset(size.width * 0.05, size.height * 0.99),
        radius: const Radius.circular(22),
        clockwise: false,
      )
      ..lineTo(size.width * 0.95, size.height * 0.80)
      ..arcToPoint(
        Offset(size.width, size.height * 0.75),
        radius: const Radius.circular(20),
        clockwise: false,
      )
      ..lineTo(size.width, size.height * 0.15)
      ..arcToPoint(
        Offset(size.width * 0.95, 0),
        radius: const Radius.circular(38),
        clockwise: false,
      )
      ..close();
    canvas.drawPath(path, paint);
    canvas.drawPath(path, strokePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
