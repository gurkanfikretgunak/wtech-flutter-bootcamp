import 'package:wise_app/unit/imports.dart';

class HomeSliverFillRemaining extends StatelessWidget {
  const HomeSliverFillRemaining({Key? key, required this.size})
      : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Container(
        width: size.width,
        height: 5000,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: 35,
                height: 4.2,
                color: Colors.grey.shade300,
              ),
            ),
            SizedBox(
              width: size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      HomeTextConstants.allActivity,
                      style: HomeStyle.homePageTitleStyle,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.lightbulb_outline,
                        color: Colors.blue[400],
                        size: 28,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.blue[400],
                      ))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                HomeTextConstants.today,
                                style: HomeStyle.homePageContentStyle,
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: SizedBox(
                                height: 1,
                                width: size.width,
                                child: Container(
                                  color: Colors.grey.shade400,
                                ),
                              )),
                          SizedBox(
                            width: size.width,
                            height: 300,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    width: size.width,
                                    height: 100,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15.0, top: 15),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.grey.shade200,
                                              child: const Icon(
                                                Icons.add,
                                                size: 40,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 33.0),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: size.width - 90,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      HomeTextConstants
                                                          .activityTitle,
                                                      style: HomeStyle
                                                          .homePageTitleStyle,
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      HomeTextConstants
                                                          .activityCost,
                                                      style: HomeStyle
                                                          .homePageTitleStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0),
                                                child: SizedBox(
                                                  width: size.width - 90,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        HomeTextConstants
                                                            .activityContent,
                                                        style: HomeStyle
                                                            .homePageContentStyle,
                                                      ),
                                                      const Spacer(),
                                                      Text(
                                                        HomeTextConstants
                                                            .activityCostDetail,
                                                        style: HomeStyle
                                                            .homePageContentStyle,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
