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

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.add_alert_outlined)),
        elevation: 0,
        backgroundColor: provider.homePageBackgroundColor,
        iconTheme: ColorConstants.homePageAppBarButtonColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(HomeConstants.navigationItemBottomPadding),
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
      body: Container(
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
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
