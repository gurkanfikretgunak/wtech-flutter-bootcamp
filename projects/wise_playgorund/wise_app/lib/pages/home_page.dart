import 'package:wise_app/pages/account_page.dart';
import 'package:wise_app/unit/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);
    final providerUnit = Provider.of<UnitProvider>(context);

    final screens = [
      Container(
        width: size.width,
        height: size.height,
        color: provider.homePageBackgroundColor,
        child: SafeArea(
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  const HomeSliverAppBar(),
                  HomeSliverFillRemaining(
                    size: size,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Center(
        child: Text("Card"),
      ),
      Center(
        child: Text("Send"),
      ),
      Center(
        child: Text("Recipients"),
      ),
      AccountScreen(size: size),
    ];

    final appBarList = [
      AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.add_alert_outlined)),
        elevation: 0,
        backgroundColor: provider.homePageBackgroundColor,
        iconTheme: ColorConstants.homePageAppBarButtonColor,
        actions: [
          Padding(
            padding:
                const EdgeInsets.all(HomeConstants.navigationItemBottomPadding),
            child: TextButton(
                style: HomeStyle.homeAppBarButtonStyle,
                onPressed: () {
                  if (kDebugMode) {
                    provider.changeTheme();
                  }
                },
                child: const Text(HomeTextConstants.appBarButtonText)),
          ),
        ],
      ),
      AppBar(
        elevation: 0,
        backgroundColor: provider.appBarColor,
        iconTheme: ColorConstants.homePageAppBarButtonColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.question_mark_outlined,
                size: 20,
              ),
              onPressed: () {
                provider.changeTheme();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),AppBar(
        elevation: 0,
        backgroundColor: provider.appBarColor,
        iconTheme: ColorConstants.homePageAppBarButtonColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.question_mark_outlined,
                size: 20,
              ),
              onPressed: () {
                provider.changeTheme();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),AppBar(
        elevation: 0,
        backgroundColor: provider.appBarColor,
        iconTheme: ColorConstants.homePageAppBarButtonColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.question_mark_outlined,
                size: 20,
              ),
              onPressed: () {
                provider.changeTheme();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),AppBar(
        elevation: 0,
        backgroundColor: provider.appBarColor,
        iconTheme: ColorConstants.homePageAppBarButtonColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.question_mark_outlined,
                size: 20,
              ),
              onPressed: () {
                provider.changeTheme();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: HomeConstants.navigationItemBottomPadding,
                top: HomeConstants.navigationItemBottomPadding),
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ];
    return Scaffold(
      appBar: appBarList[providerUnit.currentIndex],
      body: PageView(
          controller: providerUnit.pageController,
          children: screens),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }

}



