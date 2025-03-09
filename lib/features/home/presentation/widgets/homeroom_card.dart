import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/core/constants/images.dart';
import 'package:thepilot/core/widgets/custom_image.dart';

class HomeroomCard extends StatelessWidget {
  const HomeroomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 100.h,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Color(0xFF006FFD),
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Stack(
        children: [
          CustomImage(
            Images.dots,
            width: 1.sw,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          Container(
            width: 1.sw,
            height: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8).r,
              gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  Color(0xFF006FFD).withValues(alpha: 0.0),
                  Color(0xFF006FFD),
                  Color(0xFF006FFD),
                  Color(0xFF006FFD),
                ],
              ),
            ),
          ),
          Container(
            width: 1.sw,
            height: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8).r,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Color(0xFF006FFD).withValues(alpha: 0.0),
                  Color(0xFF006FFD).withValues(alpha: 0.0),
                  Color(0xFF006FFD),
                  Color(0xFF006FFD),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12).w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Homeroom',
                        style: GoogleFonts.inter(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5.sp,
                          height: 1.sp,
                        ),
                      ),
                      Text(
                        'Your classroom awaits you',
                        style: GoogleFonts.inter(
                          color: Color(0xFFFFFFFF).withValues(alpha: 0.6),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5.sp,
                          height: 1.sp,
                        ),
                      ),
                      16.verticalSpace,
                    ],
                  ),
                ),
                CustomImage(Images.workspace, width: 93.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
