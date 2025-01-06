import 'package:complete_app/core/themes/text_styles.dart';
import 'package:complete_app/core/widgets/my_responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/my_button.dart';
import '../widgets/doc_image_and_text.dart';
import '../widgets/doc_logo_and_named.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DocImageAndText(),
              SizedBox(
                height: 10.h,
              ),
              MyResponsiveText(
                text:
                    "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                style: MyTextStyles.font10GreyRegular,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: MyButton(),
              )

            ],
          ),
        ),
      ),
    );
  }
}
