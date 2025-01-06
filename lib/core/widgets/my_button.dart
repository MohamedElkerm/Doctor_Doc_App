import 'package:complete_app/core/themes/app_colors.dart';
import 'package:complete_app/core/themes/text_styles.dart';
import 'package:complete_app/core/widgets/my_responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              16.0,
            ),
          ),
        )),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColorBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          Size(
            double.infinity,
            52.h,
          ),
        ),
      ),
      onPressed: () {},
      child: MyResponsiveText(
        text: "Get Started",
        style: MyTextStyles.font16WhiteRegular,
      ),
    );
  }
}
