import 'package:flutter/material.dart';

class RewardsCardWidget extends StatelessWidget {
  final ImageProvider image, leadingImage;
  final String title, subtitle;
  final Widget? trailingWidget;
  const RewardsCardWidget({
    Key? key,
    required this.image,
    required this.leadingImage,
    required this.title,
    required this.subtitle,
    required this.trailingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('statement $title');
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width - 30,
        child: Card(
          elevation: 0,
          color: Colors.grey[50],
          child: Column(children: [
            Expanded(
              flex: 7,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                        fit: BoxFit.fill, width: double.infinity, image: image),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      padding: const EdgeInsets.all(15.0),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 0),
                dense: true,
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 34,
                    minHeight: 34,
                    maxWidth: 54,
                    maxHeight: 54,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                        fit: BoxFit.fill, width: double.infinity, image: image),
                  ),
                ),
                title: Text(title),
                subtitle: Text(subtitle),
                trailing: (trailingWidget != null)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [trailingWidget!],
                      )
                    : null,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
