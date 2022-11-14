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
                color: const Color(0XFFF8F7FC),
                child: Icon(
                  bottomScreenIcon,
                  size: 200,
                  color: const Color(0XFFDBD9E5),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
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
                color: const Color(0xFFC14D25),
                textStyle: const TextStyle(fontWeight: FontWeight.w900),
              ),
              hasOutlineButton == true
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CustomElevatedButton(
                        text: bottomOutlineButtonText ?? '',
                        onPressed: navigateOutline ?? () {},
                        color: Colors.white,
                        border: true,
                        textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
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
