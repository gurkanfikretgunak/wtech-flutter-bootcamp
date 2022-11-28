import 'package:wise_app/unit/imports.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return SliverAppBar(
      backgroundColor: provider.homePageBackgroundColor,
      expandedHeight: HomeConstants.sliverAppBarExpandedHeightSize,
      flexibleSpace: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(7.0),
              child: SizedBox(
                width: HomeConstants.sliverAppBarCardWidthSize,
                height: HomeConstants.sliverAppBarCardHeightSize,
                child: Card(
                  shape: HomeStyle.sliverAppBarCardStyle,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 60,
                                width: 50,
                                child: CircleAvatar(
                                  child: Image.asset(HomePathConstants.flagABD),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, bottom: 7),
                                child: Text(
                                  HomeTextConstants.balance,
                                  style: HomeStyle.homePageTitleStyle,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                HomeTextConstants.currencyUnit,
                                style: HomeStyle.homePageContentStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
