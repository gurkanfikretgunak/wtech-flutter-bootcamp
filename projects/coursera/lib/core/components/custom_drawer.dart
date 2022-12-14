// import 'custom_divider.dart';
// import 'custom_viewer_image.dart';
// import 'text/text_libary.dart';
// import '../constants/constant_libary.dart';
// import '../init/routes/custom_navigator.dart';
// import 'package:flutter/material.dart';
// import 'package:kartal/kartal.dart';

// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           context.emptySizedHeightBoxNormal,
//           _buildTextButton(
//             context,
//             icon: Icons.cloud_queue_outlined,
//             onPressed: () =>
//                 CustomNavigator.goToScreen(context, '/ThemeSettingView'),
//             text: "Theme",
//           ),
//           _buildTextButton(
//             context,
//             icon: Icons.settings_outlined,
//             text: "Settings",
//           ),
//           _buildTextButton(
//             context,
//             icon: Icons.logout_outlined,
//             text: "Logout",
//             onPressed: () {
//               CustomNavigator.goToScreen(context, '/SignInView');
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   TextButton _buildTextButton(
//     BuildContext context, {
//     required IconData icon,
//     required String text,
//     VoidCallback? onPressed,
//   }) {
//     return TextButton(
//       onPressed: onPressed ?? () {},
//       child: Padding(
//         padding: context.horizontalPaddingMedium,
//         child: SizedBox(
//           height: context.dynamicHeight(0.05),
//           child: Row(
//             children: [
//               Icon(
//                 icon,
//                 color: ColorConstant.instance.appGrey3,
//               ),
//               SizedBox(width: context.dynamicWidth(0.04)),
//               CustomText(
//                 color: ColorConstant.instance.appGrey3,
//                 text: text,
//                 fontSize: 15,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
