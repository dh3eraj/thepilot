import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/core/constants/images.dart';
import 'package:thepilot/core/widgets/custom_image.dart';

class AnnouncementCard extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  const AnnouncementCard({
    super.key,
    required this.title,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFF006FFD),
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Stack(
        children: [
          CustomImage(
            Images.dotsVertical,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0).w,
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(100).r,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.2.r,
                      blurStyle: BlurStyle.normal,
                      color: Color(0xFF000000).withValues(alpha: 0.25),
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: CustomImage(Images.folder, width: 32.w, height: 32.h),
                ),
              ),
              8.verticalSpace,
              Padding(
                padding: const EdgeInsets.only(left: 12).w,
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5.sp,
                    height: 1.sp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12).w,
                child: Text(
                  'Your classroom awaits you',
                  style: GoogleFonts.inter(
                    color: Color(0xFFFFFFFF).withValues(alpha: 0.6),
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5.sp,
                    height: 1.sp,
                  ),
                ),
              ),
              10.verticalSpace,
            ],
          ),
        ],
      ),
    );
  }
}
