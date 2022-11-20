import 'package:coursera/widgets/text/text_libary.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/constants/constant_libary.dart';
import '../button/button_libary.dart';

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
    this.errorText,
    this.borderRadius,
    this.suffixIconSize,
    this.focusNode,
    this.autovalidateMode,
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
  final double? suffixIconSize;
  final Color? borderSideColor;
  final Color? textColor;
  final InputBorder? enabledBorder;
  final double? hintTextFontSize;
  final InputBorder? focusedBorder;
  final String? hintText;
  final String? labelText;
  final double? labelTextFontSize;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final double? fontSize;
  final bool? readOnly;
  final String? errorText;
  final double? borderRadius;
  final FocusNode? focusNode;
  final autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autovalidateMode: autovalidateMode,
          focusNode: focusNode,
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
          cursorColor: cursorColor,
          maxLines: maxLines ?? 1,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          maxLength: maxLength,
          decoration: InputDecoration(
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(
                    horizontal: context.dynamicWidth(0.03), vertical: 0),
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: hintTextFontSize,
              color: hintTextColor,
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              fontSize: fontSize,
              color: labelTextColor ?? ColorConstant.instance.appGreyDark,
            ),
            enabledBorder: enabledBorder ?? _buildOutlineInputBorder(),
            focusedBorder: enabledBorder ?? _buildOutlineInputBorder(),
            errorText: errorText,
            errorStyle: TextStyle(color: ColorConstant.instance.appRed),
            focusedErrorBorder: _buildOutlineInputBorder(),
            errorBorder: _buildOutlineInputBorder(),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon == null
                ? null
                : Icon(prefixIcon,
                    color:
                        prefixIconColor ?? ColorConstant.instance.appGreyDark),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          borderRadius ?? RadiusConstant.instance.textFieldFormBorderRadius,
        ),
      ),
      borderSide: BorderSide(
        width: 1.5,
        color:
            borderSideColor ?? ColorConstant.instance.textFormFieldBorderColor,
      ),
    );
  }
}


// Form(
//                 key: formKey,

//                 onChanged: () {
//                   setState(() {
//                     isFormValidate =false;
//                   });
//                 },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextFormField(
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       validator: (name) {
//                         if (name!.length < 2 
//                             name.contains(RegExp(r'[0-9]')) 
//                             name.isEmpty) {
//                           return 'Please enter a valid name!';
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       validator: (String? email) {
//                         if (email!.length < 2 
//                             email.contains(
//                                 RegExp(r'^[\w-.]+@([\w-]+.)+[\w-]{2,4}$')) 
//                             email.isEmpty) {
//                           return 'Please enter a valid email!';
//                         }
//                         return null;
//                       },
//                     ),
//                   ],
//                 ),
//               ),