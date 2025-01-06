import 'package:complete_app/core/helper/svgs.dart';
import 'package:complete_app/core/themes/text_styles.dart';
import 'package:complete_app/core/widgets/my_responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppSVGs.logo,
        ),
        SizedBox(
          width: 10.w,
        ),
        MyResponsiveText(
          text: "DocDoc",
          style: MyTextStyles.font24Black700W,
        ),
      ],
    );
  }
}
