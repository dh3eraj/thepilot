import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 48.w,
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            border: Border.all(color: Color(0xFF006FFD), width: 4.w),
            borderRadius: BorderRadius.circular(1000).r,
          ),
          child: Text(
            '42%',
            style: GoogleFonts.inter(
              color: Color(0xFF000000),
              fontSize: 12.sp,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5.sp,
              height: 1.sp,
            ),
          ),
        ),
        3.verticalSpace,
        Text(
          'Attendence',
          style: GoogleFonts.inter(
            color: Color(0xFF000000),
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5.sp,
            height: 1.sp,
          ),
        ),
      ],
    );
  }
}
