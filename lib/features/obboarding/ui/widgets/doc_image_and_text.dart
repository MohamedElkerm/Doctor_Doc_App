import 'package:complete_app/core/themes/text_styles.dart';
import 'package:complete_app/core/widgets/my_responsive_text.dart';
import 'package:complete_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.1, 0.3],
            ),
          ),
          child: Image.asset(
            Assets.imagesDoctorImage,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          // alignment: Alignment.bottomLeft,
          bottom:25.0,
          left:0.0,
          right:0.0,
          child: MyResponsiveText(
            textAlign: TextAlign.center,
            text: "Best Doctor Appointment App",
            style: MyTextStyles.font32Blue700W.copyWith(height: 1.2),
            maxLines: 2,

          ),
        ),
      ],
    );
  }
}
