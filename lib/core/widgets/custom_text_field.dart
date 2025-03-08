import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thepilot/config/theme/text_themes.dart';
import 'package:thepilot/core/extensions.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Color? cursorColor;
  final TextInputType? keyboardType;
  final String obscuringCharacter;
  final TextAlign textAlign;
  final EdgeInsetsGeometry? contentPadding;
  final InputDecoration? decoration;
  const CustomTextField({
    super.key,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.style,
    this.controller,
    this.focusNode,
    this.textInputAction,
    this.cursorColor,
    this.keyboardType,
    this.textAlign = TextAlign.left,
    this.obscuringCharacter = '*',
    this.contentPadding,
    this.decoration,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      textAlign: textAlign,
      inputFormatters: inputFormatters,
      cursorColor: Color(0xFF006FFD),
      cursorHeight: 16.r,
      cursorWidth: 1.5.w,

      decoration:
          decoration ??
          InputDecoration(
            contentPadding:
                contentPadding ??
                EdgeInsets.symmetric(vertical: 14, horizontal: 16).w,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12).w,
              borderSide: BorderSide(width: 1.w, color: Color(0xFFC5C6CC)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12).w,
              borderSide: BorderSide(width: 1.w, color: Color(0xFFC5C6CC)),
            ),
            filled: true,
            fillColor: Color(0xFFFFFFFF),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle:
                hintStyle ??
                TextThemes.bodyMedium.copyWith(
                  height: 20.0.toFigmaHeight(14.sp),
                ),
            constraints: BoxConstraints(minHeight: 48.r, maxHeight: 48.r),
          ),
      keyboardType: keyboardType,
      style:
          style ??
          TextThemes.bodyMedium.copyWith(height: 18.0.toFigmaHeight(14.sp)),
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
    );
  }
}
