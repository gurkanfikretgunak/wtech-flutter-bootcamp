import 'package:coursera/core/constants/constants.dart';
import 'package:coursera/widgets/button/custom_button_text.dart';
import 'package:coursera/widgets/custom_app_bar.dart';
import 'package:coursera/widgets/custom_card.dart';
import 'package:coursera/widgets/text/custom_auto_size_text.dart';
import 'package:coursera/widgets/text/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    ConstantsClass constant = ConstantsClass.instance;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(
          leading: CustomTextButton(
            onPressed: () {},
            text: "Switch Catalog",
          ),
          context: context,
        ),
        body: Padding(
          padding: context.horizontalPaddingMedium,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Explore",
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextFormField(
                  fillColor: constant.appGreyLight,
                  prefixIcon: Icons.search_outlined,
                  labelText: "What do you want to learn?",
                  contentPadding: const EdgeInsets.all(2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Topics",
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      text: "See All",
                    )
                  ],
                ),
                SizedBox(
                  height: context.dynamicHeight(0.1),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const Chip(
                        label: CustomText(text: "Business"),
                      );
                    },
                  ),
                ),
                CustomText(
                  text: "My Coursera",
                  fontSize: 23,
                  color: constant.appGreyDark,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Most Popular Certificates",
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      text: "See All",
                    )
                  ],
                ),
                SizedBox(
                  height: context.dynamicHeight(0.36),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        width: context.dynamicWidth(0.4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Image(
                              image:
                                  AssetImage("assets/learn_page_image_1.png"),
                            ),
                            const CustomText(
                              textAlign: TextAlign.start,
                              text: "Google Data Analytics",
                              fontSize: 16,
                              maxLines: 2,
                            ),
                            CustomText(
                              textAlign: TextAlign.start,
                              text: "Google    Professional Certificates",
                              fontSize: 16,
                              maxLines: 2,
                              color: constant.appGreyDark,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                ),
                                CustomText(
                                  text: "4.8(79K)",
                                  fontSize: 18,
                                  color: constant.appGreyDark,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: "Get Started with These Free Courses",
                          fontSize: 23,
                          maxLines: 2,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CustomTextButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          text: "See All",
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: context.dynamicHeight(0.5),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CustomCard(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                textAlign: TextAlign.start,
                                text: "COVID-19 Contact Tracing",
                                fontSize: 16,
                                maxLines: 2,
                              ),
                              CustomText(
                                textAlign: TextAlign.start,
                                text: "John Hopkins University",
                                maxLines: 2,
                                color: constant.appGreyDark,
                              ),
                              CustomText(
                                textAlign: TextAlign.start,
                                text: "John Hopkins University",
                                maxLines: 2,
                                color: constant.appGreyDark,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    color: constant.appBlack,
                                    Icons.star,
                                    size: 20,
                                  ),
                                  CustomText(
                                    text: "4.8(79K)",
                                    color: constant.appGreyDark,
                                  )
                                ],
                              )
                            ],
                          ),
                          const Image(
                            image: AssetImage("assets/learn_page_image_1.png"),
                          ),
                        ],
                      ));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
