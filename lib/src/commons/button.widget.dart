import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ButtonWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? contentColor;
  final double? width;
  final double? borderRadius;
  final MainAxisAlignment? contentAlignment;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const ButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.contentColor,
    this.width,
    this.contentAlignment,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      constraints: const BoxConstraints(
        minHeight: 50,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          backgroundColor: backgroundColor ?? Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            side: BorderSide(color: borderColor ?? Colors.transparent),
          ),
        ),
        child: Row(
          mainAxisAlignment: contentAlignment ?? MainAxisAlignment.center,
          children: [
            prefixIcon != null
                ? Icon(
                    prefixIcon,
                    size: 20,
                    color: contentColor ?? Colors.white,
                  )
                : const SizedBox(),
            prefixIcon != null ? const SizedBox(width: 16) : const SizedBox(),
            Text(
              title,
              style: GoogleFonts.poppins(
                color: contentColor ?? Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            suffixIcon != null ? const SizedBox(width: 16) : const SizedBox(),
            suffixIcon != null
                ? Icon(
                    suffixIcon,
                    size: 20,
                    color: contentColor ?? Colors.white,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
