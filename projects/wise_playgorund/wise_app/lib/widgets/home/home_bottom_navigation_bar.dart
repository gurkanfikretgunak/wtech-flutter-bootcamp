import 'package:wise_app/unit/imports.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    final providerUnit = Provider.of<UnitProvider>(context);
    return BottomNavigationBar(
      backgroundColor: provider.homePageCardBackgroundColor,
      selectedItemColor: Colors.blue,
      unselectedItemColor: provider.bottomNavItemUnselectedColor,
      iconSize: HomeConstants.navigationIconSize,
      selectedFontSize: HomeConstants.navigationItemFontSize,
      unselectedFontSize: HomeConstants.navigationItemFontSize,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle:
          const TextStyle(color: ColorConstants.splashBackgroundColor),
      showUnselectedLabels: true,
      currentIndex: providerUnit.currentIndex,
      onTap: (index) =>
          setState(() => providerUnit.changeBottomNavbarIndex(index)),
      items: [
        BottomNavigationBarItem(
            backgroundColor: provider.homePageCardBackgroundColor,
            icon: const Padding(
              padding: EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
              ),
              child: SizedBox(
                width: 20,
                height: 20,
                child: ImageIcon(AssetImage("assets/images/home_icon.png")),
              ),
            ),
            label: HomeTextConstants.navigationItemTextHome),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                  bottom: HomeConstants.navigationItemBottomPadding),
              child: SizedBox(
                width: 20,
                height: 20,
                child: ImageIcon(AssetImage("assets/images/card_icon.png")),
              ),
            ),
            label: HomeTextConstants.navigationItemTextCard),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: SizedBox(
                width: 40,
                height: 40,
                child: ImageIcon(
                  AssetImage("assets/images/send_icon.png"),
                  color: Colors.green,
                ),
              ),
            ),
            label: HomeTextConstants.navigationItemTextSend),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                  bottom: HomeConstants.navigationItemBottomPadding),
              child: SizedBox(
                width: 20,
                height: 20,
                child:
                    ImageIcon(AssetImage("assets/images/recipients_icon.png")),
              ),
            ),
            label: HomeTextConstants.navigationItemTextRecipients),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                  bottom: HomeConstants.navigationItemBottomPadding),
              child: SizedBox(
                width: 20,
                height: 20,
                child: ImageIcon(AssetImage("assets/images/account_icon.png")),
              ),
            ),
            label: HomeTextConstants.navigationItemTextAccount),
      ],
    );
  }
}
