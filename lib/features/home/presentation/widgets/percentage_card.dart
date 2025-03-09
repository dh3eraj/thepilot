import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/core/constants/svgs.dart';
import 'package:thepilot/core/widgets/custom_image.dart';

class PercentageCard extends StatelessWidget {
  final double increment;
  final double total;
  final String unit;
  const PercentageCard({
    super.key,
    required this.increment,
    required this.total,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167.w,
      height: 96.h,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Color(0xFF006FFD),
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Percentage',
            style: GoogleFonts.inter(
              color: Color(0xFFFFFFFF),
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5.sp,
              height: 1.sp,
            ),
          ),
          7.verticalSpace,
          Row(
            children: [
              CustomImage.svg(Svgs.arrowUpRounded, width: 8.w, height: 8.w),
              2.horizontalSpace,
              Text(
                '$increment%',
                style: GoogleFonts.inter(
                  color: Color(0xFF1A1A1A),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.5.r,
                  height: 1.r,
                ),
              ),
              2.horizontalSpace,
              Text(
                'From Last Month',
                style: GoogleFonts.inter(
                  color: Color(0xFFFFFFFF),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5.sp,
                  height: 1.sp,
                ),
              ),
            ],
          ),
          Spacer(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$total',
                  style: GoogleFonts.inter(
                    color: Color(0xFFFFFFFF),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.5.sp,
                    height: 1.sp,
                  ),
                ),
                WidgetSpan(child: 6.horizontalSpace),
                TextSpan(
                  text: unit,
                  style: GoogleFonts.inter(
                    color: Color(0xFFFFFFFF).withValues(alpha: 0.6),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.5.r,
                    height: 1.r,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
