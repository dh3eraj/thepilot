import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/core/extensions.dart';

class TextThemes {
  static TextStyle get heading1 => GoogleFonts.inter(
    color: Color(0xFF000000),
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.r,
    height: 1,
  );
  static TextStyle get bodySmall => GoogleFonts.inter(
    color: Color(0xFF8F9098),
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.r,
    height: 16.sp.toFigmaHeight(12.sp),
  );

  static TextStyle get bodyMedium => GoogleFonts.inter(
    color: Color(0xFF8F9098),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
    height: 1,
  );
  static TextStyle get actionMedium => GoogleFonts.inter(
    color: Color(0xFF006FFD),
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1,
  );
}

