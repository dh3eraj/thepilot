import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/config/theme/text_themes.dart';
import 'package:thepilot/core/constants/svgs.dart';
import 'package:thepilot/core/extensions.dart';
import 'package:thepilot/core/widgets/action_button.dart';
import 'package:thepilot/core/widgets/custom_image.dart';
import 'package:thepilot/core/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 312.h,
              width: 1.sw,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10).w,
              decoration: BoxDecoration(color: Color(0xFFEAF2FF)),
              child: CustomImage.svg(Svgs.image, width: 32.w, height: 32.w),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 24).r,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome!',
                    style: TextThemes.heading1,
                    textAlign: TextAlign.center,
                  ),
                  24.verticalSpace,
                  CustomTextField(
                    hintText: 'Email Address',
                    textInputAction: TextInputAction.next,
                  ),
                  16.verticalSpace,
                  CustomTextField(
                    hintText: 'Password',
                    suffixIcon: Padding(
                      padding:
                          EdgeInsets.only(
                            left: 8,
                            top: 14,
                            right: 16,
                            bottom: 14,
                          ).w,
                      child: CustomImage.svg(
                        Svgs.eyeClose,
                        width: 16.w,
                        height: 16.w,
                      ),
                    ),
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                  ),
                  16.verticalSpace,
                  Text(
                    'Forgot password?',
                    style: TextThemes.actionMedium.copyWith(
                      height: 15.0.toFigmaHeight(12.sp),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  24.verticalSpace,
                  ActionButton('Login'),
                  16.verticalSpace,
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Not a member?',
                            style: TextThemes.bodySmall,
                          ),
                          TextSpan(
                            text: ' Register now',
                            style: TextThemes.actionMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  24.verticalSpace,
                  Divider(height: 0.5.h, color: Color(0xFFD4D6DD)),
                  24.verticalSpace,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('App made by', style: TextThemes.bodySmall),
                      16.verticalSpace,
                      1.sw.horizontalSpace,
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xFF006FFD),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          padding:
                              EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 12,
                              ).r,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Hussam Codes',
                          style: GoogleFonts.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.sp,
                            color: Color(0xFFFFFFFF),
                            height: 16.sp.toFigmaHeight(12.sp),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
