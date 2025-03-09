import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thepilot/core/constants/images.dart';
import 'package:thepilot/core/constants/svgs.dart';
import 'package:thepilot/core/widgets/custom_image.dart';
import 'package:thepilot/features/home/presentation/widgets/announcement_card.dart';
import 'package:thepilot/features/home/presentation/widgets/homeroom_card.dart';
import 'package:thepilot/features/home/presentation/widgets/percentage_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).r,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBar().preferredSize.height.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12).r,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    PercentageCard(increment: 12, total: 87.52, unit: '%'),
                    PercentageCard(
                      increment: 12,
                      total: 87.52,
                      unit: 'classes',
                    ),
                  ],
                ),
                16.verticalSpace,
                HomeroomCard(),
                16.verticalSpace,
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 167.w,
                        height: 271.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF1A1A1A),
                          borderRadius: BorderRadius.circular(8).r,
                        ),
                        child: Stack(
                          children: [
                            CustomImage(
                              Images.dotsVertical,
                              width: 167.w,
                              height: 271.h,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              width: 167.w,
                              height: 271.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8).r,
                                gradient: LinearGradient(
                                  begin: FractionalOffset.topLeft,
                                  end: FractionalOffset.bottomRight,
                                  colors: [
                                    Color(0xFF1A1A1A).withValues(alpha: 0.0),
                                    Color(0xFF1A1A1A),
                                    Color(0xFF1A1A1A),
                                    Color(0xFF1A1A1A),
                                    Color(0xFF1A1A1A),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 167.w,
                              height: 271.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8).r,
                                gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Color(0xFF1A1A1A).withValues(alpha: 0.0),
                                    Color(0xFF1A1A1A).withValues(alpha: 0.0),
                                    Color(0xFF1A1A1A),
                                    Color(0xFF1A1A1A),
                                    Color(0xFF1A1A1A),
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
                                        color: Color(
                                          0xFF000000,
                                        ).withValues(alpha: 0.25),
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: CustomImage(
                                      Images.folder,
                                      width: 32.w,
                                      height: 32.h,
                                    ),
                                  ),
                                ),
                                8.verticalSpace,
                                Padding(
                                  padding: const EdgeInsets.only(left: 12).w,
                                  child: Text(
                                    'Assigned Classes',
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
                                      color: Color(
                                        0xFFFFFFFF,
                                      ).withValues(alpha: 0.6),
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5.sp,
                                      height: 1.sp,
                                    ),
                                  ),
                                ),
                                16.verticalSpace,
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AnnouncementCard(
                            title: 'Announcements',
                            width: 167.w,
                            height: 124.h,
                          ),
                          AnnouncementCard(
                            title: 'Notes & Storage',
                            width: 167.w,
                            height: 132.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
