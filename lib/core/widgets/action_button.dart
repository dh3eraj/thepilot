import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thepilot/config/theme/text_themes.dart';
import 'package:thepilot/core/extensions.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const ActionButton(this.text, {super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.r,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF006FFD),
          borderRadius: BorderRadius.circular(12).r,
        ),
        child: Text(
          text,
          style: TextThemes.actionMedium.copyWith(
            color: Color(0xFFFFFFFF),
            height: 15.0.toFigmaHeight(12.sp),
          ),
        ),
      ),
    );
  }
}
