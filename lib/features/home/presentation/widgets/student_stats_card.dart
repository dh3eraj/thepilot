import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/core/constants/svgs.dart';
import 'package:thepilot/core/widgets/custom_expansion_tile.dart';
import 'package:thepilot/core/widgets/custom_image.dart';
import 'package:thepilot/features/home/presentation/widgets/attendance_card.dart';

class StudentStatsCard extends StatelessWidget {
  final String number;
  const StudentStatsCard({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 10).w,
      backgroundColor: Color(0xFFF3F3F3),
      collapsedBackgroundColor: Color(0xFFF3F3F3),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xFF000000).withValues(alpha: 0.3),
          width: 0.3.r,
        ),
        borderRadius: BorderRadius.circular(8).r,
      ),
      collapsedShape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xFF000000).withValues(alpha: 0.3),
          width: 0.3.r,
        ),
        borderRadius: BorderRadius.circular(8).r,
      ),
      trailing: Container(
        width: 22.w,
        height: 22.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF006FFD),
          shape: BoxShape.circle,
        ),
        child: CustomImage.svg(Svgs.chevronDown, width: 11.w, height: 6.8.h),
      ),
      leading: Container(
        padding: EdgeInsets.all(10).w,
        decoration: BoxDecoration(
          color: Color(0xFF006FFD),
          borderRadius: BorderRadius.circular(8).r,
        ),
        child: Text(
          number,
          style: GoogleFonts.inter(
            color: Color(0xFFFFFFFF),
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5.sp,
            height: 1.sp,
          ),
        ),
      ),
      title: Text(
        'Student Name',
        style: GoogleFonts.inter(
          color: Color(0xFF000000).withValues(alpha: 0.5),
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5.sp,
          height: 1.sp,
        ),
      ),
      subtitle: Text(
        'Sathak Hussam',
        style: GoogleFonts.inter(
          color: Color(0xFF000000),
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5.sp,
          height: 1.sp,
        ),
      ),
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 18).w,
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 8, top: 18).w,
          decoration: BoxDecoration(
            color: Color(0xFFF3F3F3),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(12).r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              AttendanceCard(),
              AttendanceCard(),
              AttendanceCard(),
              AttendanceCard(),
            ],
          ),
        ),
      ],
    );
  }
}
