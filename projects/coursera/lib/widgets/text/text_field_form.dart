import 'package:coursera/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.cursorColor,
    this.hintText,
    this.onChanged,
    this.hintTextColor,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIcon,
    this.prefixIconColor,
    this.obscureText,
    this.fillColor,
    this.filled,
    this.enabledBorder,
    this.maxLength,
    this.keyboardType,
    this.maxLines,
    this.labelText,
    this.labelTextColor,
    this.borderSideColor,
    this.textColor,
    this.focusedBorder,
    this.onTap,
    this.validator,
    this.contentPadding,
    this.hintTextFontSize,
    this.fontSize,
    this.readOnly,
    this.labelTextFontSize,
  }) : super(key: key);

  final int? maxLines;

  final int? maxLength;
  final bool? obscureText;
  final bool? filled;
  final Color? cursorColor;
  final Color? hintTextColor;
  final Color? labelTextColor;
  final Color? fillColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final Color? borderSideColor;
  final Color? textColor;
  final InputBorder? enabledBorder;
  final double? hintTextFontSize;
  final InputBorder? focusedBorder;
  final String? hintText;
  final String? labelText;
  final double? labelTextFontSize;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;
  final Function()? onTap;
  final double? fontSize;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    ConstantsClass constants = ConstantsClass.instance;
    return Column(children: [
      TextFormField(
        readOnly: readOnly ?? false,
        key: key,
        controller: controller,
        onTap: onTap,
        onChanged: onChanged,
        validator: validator,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ),
        cursorColor: cursorColor ?? constants.textFieldFormCursorColor,
        maxLines: maxLines ?? constants.textFieldFormMaxLines,
        obscureText: obscureText ?? constants.textFieldFormObscureText,
        keyboardType: keyboardType ?? constants.textFieldFormKeyboardType,
        maxLength: maxLength == null ? null : constants.textFieldFormMaxLength,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          filled: filled ?? constants.textFieldFormFilled,
          fillColor: fillColor ?? constants.textFieldFormFilledColor,
          hintText: hintText ?? constants.textFieldFormHintText,
          hintStyle: TextStyle(
            fontSize: hintTextFontSize ?? constants.textFieldFormHintTextSize,
            color: hintTextColor ?? constants.textFieldFormHintTextColor,
          ),
          labelText: labelText == null
              ? null
              : labelText ?? constants.textFieldFormLabeText,
          labelStyle: TextStyle(
            fontSize: constants.textFieldFormLabelTextSize,
            color: labelTextColor ?? constants.textFieldFormLabelTextColor,
          ),
          enabledBorder: enabledBorder ??
              UnderlineInputBorder(
                  borderSide: BorderSide(
                width: 1.5,
                color:
                    borderSideColor ?? constants.textFieldFormBorderSideColor,
              )),
          focusedBorder: enabledBorder ??
              UnderlineInputBorder(
                  borderSide: BorderSide(
                width: 1.5,
                color:
                    borderSideColor ?? constants.textFieldFormBorderSideColor,
              )),
          suffixIcon: suffixIcon == null
              ? null
              : Icon(
                  suffixIcon ?? constants.textFieldFormSuffixIcon,
                  color:
                      suffixIconColor ?? constants.textFieldFormSuffixIconColor,
                ),
          prefixIcon: prefixIcon == null
              ? null
              : Icon(
                  prefixIcon ?? constants.textFieldFormPrefixIcon,
                  color:
                      prefixIconColor ?? constants.textFieldFormPrefixIconColor,
                ),
        ),
      ),
      enabledBorder == null
          ? Padding(
              padding: context.paddingLow,
              child: const Divider(
                color: Colors.white,
              ),
            )
          : const SizedBox()
    ]);
  }
}
