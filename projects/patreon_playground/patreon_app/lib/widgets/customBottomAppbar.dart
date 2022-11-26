// import 'package:flutter/material.dart';
// import 'package:patreon_app/core/provider/bottomNavBarProvider.dart';
// import 'package:provider/provider.dart';

// // ignore: must_be_immutable
// class CustomBottomAppBar extends StatefulWidget {
//   const CustomBottomAppBar({
//     super.key,
//   });

//   @override
//   State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
// }

// class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<BottomNavBarProvider>(context);
//     return BottomNavigationBar(
//         currentIndex: context.watch<BottomNavBarProvider>().currentPage,
//         type: BottomNavigationBarType.fixed,
//         onTap: (value) {
//           if (provider.currentPage != value) {
//             provider.changePage(value);
//           }
//         },
//         items: const [
//           BottomNavigationBarItem(
//             label: "",
//             icon: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.table_chart,
//               ),
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "",
//             icon: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.explore,
//               ),
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "",
//             icon: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.mail,
//               ),
//             ),
//           ),
//         ]);
//     return Container(
//       height: 65,
//       decoration: const BoxDecoration(
//           //color: Colors.blue,
//           ),
//       child: Column(
//         children: [
//           const Divider(
//             color: Colors.black12,
//             thickness: 1,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 enableFeedback: false,
//                 onPressed: () {
//                   setState(() {
//                     widget.selectedIndex = 0;
//                   });
//                   Navigator.pushNamed(context, "/home");
//                 },
//                 icon: widget.selectedIndex == 0
//                     ? const Icon(
//                         Icons.table_chart,
//                         color: Colors.black,
//                         size: 30,
//                       )
//                     : const Icon(
//                         Icons.table_chart_outlined,
//                         color: Colors.black,
//                         size: 30,
//                       ),
//               ),
//               IconButton(
//                 enableFeedback: false,
//                 onPressed: () {
//                   setState(() {
//                     widget.selectedIndex = 1;
//                   });
//                   Navigator.pushNamed(context, "/explore");
//                 },
//                 icon: widget.selectedIndex == 1
//                     ? const Icon(
//                         Icons.explore,
//                         color: Colors.black,
//                         size: 30,
//                       )
//                     : const Icon(
//                         Icons.explore_outlined,
//                         color: Colors.black,
//                         size: 30,
//                       ),
//               ),
//               IconButton(
//                 enableFeedback: false,
//                 onPressed: () {
//                   setState(() {
//                     widget.selectedIndex = 2;
//                   });
//                   Navigator.pushNamed(context, "/message");
//                 },
//                 icon: widget.selectedIndex == 2
//                     ? const Icon(
//                         Icons.mail,
//                         color: Colors.black,
//                         size: 30,
//                       )
//                     : const Icon(
//                         Icons.mail_outline,
//                         color: Colors.black,
//                         size: 30,
//                       ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
