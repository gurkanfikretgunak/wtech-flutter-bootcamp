import 'package:eventbrite_app/core/constants/app/padding_constants.dart';
import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';

class GuestScreenWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? bottomScreenIcon;
  final bool? hasTextButton;
  final bool? hasOutlineButton;
  final String? textDetail;
  final String? bottomButtonText;
  final String? bottomOutlineButtonText;
  final VoidCallback? navigateBottom;
  final VoidCallback? navigateText;
  final VoidCallback? navigateOutline;
  const GuestScreenWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.bottomScreenIcon,
    this.hasTextButton,
    this.textDetail,
    this.bottomButtonText,
    this.hasOutlineButton,
    this.bottomOutlineButtonText,
    this.navigateBottom,
    this.navigateText,
    this.navigateOutline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 100,
          child: Align(
            alignment: Alignment.bottomRight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(400),
              child: Container(
                height: 400,
                width: 400,
                color: Theme.of(context).primaryColorDark,
                child: Icon(
                  bottomScreenIcon,
                  size: 200,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: PaddingConstants.defaultPadding * 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
              Padding(
                padding: PaddingConstants.defaultVerticalPadding,
                child: Text(
                  subtitle,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              hasTextButton == true
                  ? TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: navigateText ?? () {},
                      child: Text(textDetail ?? ''),
                    )
                  : const SizedBox(),
              const Spacer(),
              CustomElevatedButton(
                text: bottomButtonText ?? '',
                onPressed: navigateBottom ?? () {},
                color: Theme.of(context).primaryColor,
                textStyle: Theme.of(context).textTheme.button ?? const TextStyle(),
              ),
              hasOutlineButton == true
                  ? Padding(
                      padding: PaddingConstants.defaultTopPadding,
                      child: CustomElevatedButton(
                        text: bottomOutlineButtonText ?? '',
                        onPressed: navigateOutline ?? () {},
                        color: Theme.of(context).backgroundColor,
                        border: true,
                        textStyle: Theme.of(context).textTheme.caption ?? const TextStyle(),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
