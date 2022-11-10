import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/constants/constants.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.primary,
    this.textColor,
    this.fontSize,
    this.height,
    this.width,
    this.borderSideColor,
    this.borderRadius,
    this.shadowColor,
    this.icon,
    this.iconCircleAvatarBackgroundColor,
    this.iconColor,
    this.iconsize,
    this.child,
    this.fontWeight,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final Color? primary;
  final Color? iconColor;
  final Color? textColor;
  final Color? shadowColor;
  final Color? borderSideColor;
  final Color? iconCircleAvatarBackgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
  final double? iconsize;
  final double? borderRadius;
  final Function() onPressed;
  final Widget? child;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    ConstantsClass constants = ConstantsClass.instance;
    return widget.icon == null
        ? ElevatedButton(
            onPressed: widget.onPressed,
            style: _buildStyleElevatedButton(constants, context),
            child: widget.child ?? _buildTextStyleInElevatedButton(constants),
          )
        : ElevatedButton.icon(
            onPressed: widget.onPressed,
            icon: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: widget.iconCircleAvatarBackgroundColor ??
                    constants.buttonElevatediconCircleAvatarBackgroundColor,
                child: Icon(
                  size: widget.iconsize ?? constants.buttonElevatedIconSize,
                  widget.icon,
                  color: widget.iconColor ?? constants.buttonElevatedIconColor,
                ),
              ),
            ),
            label: Align(
              alignment: Alignment.center,
              child: _buildTextStyleInElevatedButton(constants),
            ),
            style: _buildStyleElevatedButton(constants, context),
          );
  }

  CustomText _buildTextStyleInElevatedButton(ConstantsClass constants) {
    return CustomText(
      text: widget.text,
      fontWeight: widget.fontWeight ?? constants.buttonElevatedTextFontWeight,
      fontSize: widget.fontSize ?? constants.buttonElevatedTextFontSize,
      color: widget.textColor ?? constants.buttonElevatedTextColor,
    );
  }

  ButtonStyle _buildStyleElevatedButton(
      ConstantsClass constants, BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      shadowColor: widget.shadowColor ?? constants.buttonElevatedShadowColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color:
              widget.borderSideColor ?? constants.buttonElevatedBorderSideColor,
        ),
        borderRadius: constants.buttonElevatedBorderRadius,
      ),
      padding: EdgeInsets.zero,
      backgroundColor:
          widget.primary ?? constants.buttonElevatedBackgroundColor,
      fixedSize: Size(
        widget.width ?? context.dynamicWidth(constants.buttonElevatedWidth),
        widget.height ?? context.dynamicHeight(constants.buttonElevatedHeight),
      ),
    );
  }
}
