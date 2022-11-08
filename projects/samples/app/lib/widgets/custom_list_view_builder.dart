import 'package:flutter/material.dart';

class CustomListViewBuilder extends StatelessWidget {
  final List<String> timezone;
  const CustomListViewBuilder({super.key, required this.timezone});

  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.width.toString());
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: timezone.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 10),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width - 80,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                    child: Row(
                      children: [
                        Text(timezone[index], style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        border: Border.all(width: 3, color: Theme.of(context).scaffoldBackgroundColor),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
// ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       elevation: 0,
//                       backgroundColor: Theme.of(context).primaryColor,
//                       shape: CircleBorder(
//                         side: BorderSide(color: Theme.of(context).scaffoldBackgroundColor, width: 3),
//                       ),
//                     ),
//                     child: Icon(Icons.arrow_forward_ios, color: Theme.of(context).iconTheme.color),
//                   ),