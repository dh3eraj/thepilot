import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/core/constants/svgs.dart';
import 'package:thepilot/core/widgets/custom_image.dart';
import 'package:thepilot/features/home/presentation/widgets/announcement_card.dart';
import 'package:thepilot/features/home/presentation/widgets/student_stats_card.dart';

class StudentStatsScreen extends StatelessWidget {
  const StudentStatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MediaQuery.of(context).viewPadding.top.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16).r,
                      child: Container(
                        width: 40.w,
                        height: 40.w,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAF2FF),
                          borderRadius: BorderRadius.circular(16).r,
                        ),
                        child: CustomImage.svg(
                          Svgs.avatar,
                          width: 24.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    8.horizontalSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        5.verticalSpace,
                        Text(
                          'Sathak Hussam',
                          style: GoogleFonts.inter(
                            color: Color(0xFF000000),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.5.sp,
                            height: 1.sp,
                          ),
                        ),
                        Text(
                          'Teacher (Homeroom)',
                          style: GoogleFonts.inter(
                            color: Color(0x66000000),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5.sp,
                            height: 1.sp,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 40.w,
                      height: 40.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFE3ECFB),
                        borderRadius: BorderRadius.circular(16).r,
                      ),
                      child: CustomImage.svg(
                        Svgs.messageChat,
                        width: 18.w,
                        height: 18.w,
                      ),
                    ),
                  ],
                ),
              ),
              16.verticalSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    16.horizontalSpace,
                    AnnouncementCard(
                      title: 'Announcements',
                      width: 167.w,
                      height: 124.h,
                    ),
                    8.horizontalSpace,
                    AnnouncementCard(
                      title: 'Announcements',
                      width: 167.w,
                      height: 124.h,
                    ),
                    8.horizontalSpace,
                    AnnouncementCard(
                      title: 'Announcements',
                      width: 167.w,
                      height: 124.h,
                    ),
                    16.horizontalSpace,
                  ],
                ),
              ),
              18.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Students Stats',
                      style: GoogleFonts.inter(
                        color: Color(0xFF000000),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5.sp,
                        height: 1.sp,
                      ),
                    ),
                    CustomImage.svg(Svgs.menu, width: 24.w, height: 24.h),
                  ],
                ),
              ),
              18.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16).w,
                child: StudentStatsCard(number: '1'),
              ),
              9.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16).w,
                child: StudentStatsCard(number: '2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
