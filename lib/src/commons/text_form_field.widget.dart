import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../config/theme/color.theme.dart';
import '../config/theme/typography.theme.dart';

class TextFormFieldWidgets extends StatefulWidget {
  final String titleText;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool isObsecure;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final double? borderRadius;
  final Color? contentColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? enabledColor;
  final Color? focusColor;
  final Color? errorColor;
  final TextInputType? keyboardType;
  final bool isForgotPasswordShown;
  final bool ignoreTextFormField;
  final Function()? forgotPasswordAction;
  final Function()? textFieldAction;
  final String? Function(String? value)? validator;
  final Function(String? value)? onChanged;
  final int? minLines;
  final int maxLines;

  const TextFormFieldWidgets({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.isObsecure = false,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius,
    this.contentColor,
    this.backgroundColor,
    this.borderColor,
    this.enabledColor = AppColorTheme.blackColor,
    this.focusColor,
    this.errorColor,
    this.keyboardType,
    this.isForgotPasswordShown = false,
    this.forgotPasswordAction,
    this.textFieldAction,
    this.validator,
    this.onChanged,
    this.titleText = '',
    this.ignoreTextFormField = false,
    this.minLines,
    this.maxLines = 1,
  });

  @override
  State<TextFormFieldWidgets> createState() => _TextFormFieldWidgetsState();
}

class _TextFormFieldWidgetsState extends State<TextFormFieldWidgets> {
  bool obsecure = false;

  @override
  void initState() {
    obsecure = widget.isObsecure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.titleText.isNotEmpty
            ? Column(
                children: [
                  Text(
                    widget.titleText,
                    style: TypographyTextTheme.bodySmall.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              )
            : const SizedBox(),
        GestureDetector(
          onTap: widget.textFieldAction ?? () {},
          child: IgnorePointer(
            ignoring: widget.ignoreTextFormField,
            child: TextFormField(
              enabled: widget.textFieldAction == null ? true : false,
              controller: widget.controller,
              keyboardType: widget.keyboardType ?? TextInputType.visiblePassword,
              obscureText: obsecure,
              style: TextStyle(
                color: widget.contentColor ?? AppColorTheme.blackColor,
              ),
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              validator: widget.validator,
              onChanged: widget.onChanged,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.backgroundColor ?? Colors.white,
                contentPadding: const EdgeInsets.all(16),
                labelText: widget.labelText,
                labelStyle: TextStyle(
                  color: widget.contentColor ?? AppColorTheme.blackColor,
                ),
                hintText: widget.hintText,
                hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                prefixIcon: widget.prefixIcon != null
                    ? Icon(
                        widget.prefixIcon,
                        size: 20,
                        color: widget.contentColor ?? AppColorTheme.blackColor,
                      )
                    : null,
                suffixIcon: widget.isObsecure
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            obsecure = !obsecure;
                          });
                        },
                        icon: Icon(
                          obsecure ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                          size: 20,
                          color: obsecure
                              ? (widget.contentColor ?? AppColorTheme.blackColor)
                              : AppColorTheme.whiteColor300,
                        ),
                      )
                    : widget.suffixIcon != null
                        ? Icon(
                            widget.suffixIcon,
                            size: 20,
                            color: widget.contentColor ?? AppColorTheme.blackColor,
                          )
                        : null,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor ?? AppColorTheme.primary300),
                  borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.enabledColor ?? AppColorTheme.whiteColor300),
                  borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.focusColor ?? AppColorTheme.primary500),
                  borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.errorColor ?? AppColorTheme.primary500),
                  borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
                ),
              ),
            ),
          ),
        ),
        widget.isForgotPasswordShown
            ? Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: widget.forgotPasswordAction ?? () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  child: Text(
                    'Lupa Password?',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
