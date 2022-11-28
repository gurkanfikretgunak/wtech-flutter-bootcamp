import 'package:wise_app/unit/imports.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: ColorConstants.splashBackgroundColor,
      iconSize: HomeConstants.navigationIconSize,
      selectedFontSize: HomeConstants.navigationItemFontSize,
      unselectedFontSize: HomeConstants.navigationItemFontSize,
      unselectedLabelStyle:
          const TextStyle(color: ColorConstants.splashBackgroundColor),
      showUnselectedLabels: true,
      items: [
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
              ),
              child: Icon(Icons.home_outlined),
            ),
            label: HomeTextConstants.navigationItemTextHome),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                  bottom: HomeConstants.navigationItemBottomPadding),
              child: Icon(Icons.credit_card),
            ),
            label: HomeTextConstants.navigationItemTextCard),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Container(
                  width: HomeConstants.navigationItemSize,
                  height: HomeConstants.navigationItemSize,
                  decoration: HomeStyle.homePageNavigationSendButtonDecoration,
                  child: Icon(
                    Icons.arrow_upward_sharp,
                    color: Theme.of(context).canvasColor,
                  )),
            ),
            label: HomeTextConstants.navigationItemTextSend),
        const BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Padding(
              padding: EdgeInsets.only(
                  bottom: HomeConstants.navigationItemBottomPadding),
              child: Icon(
                Icons.people_alt_outlined,
              ),
            ),
            label: HomeTextConstants.navigationItemTextRecipients),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                  bottom: HomeConstants.navigationItemBottomPadding),
              child: Icon(Icons.grid_view),
            ),
            label: HomeTextConstants.navigationItemTextAccount),
      ],
    );
  }
}
