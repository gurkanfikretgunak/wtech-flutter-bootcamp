import 'package:dunkin_app/view/home.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.3,
        backgroundColor: Colors.brown[50],
        title: Center(
            child: Text(
          "APP POLİCES",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding:
              const EdgeInsets.only(left: 14, right: 25, top: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const StlyleText(
                name: "Dunkin' Donuts Online",
              ),
              const SizedBox(height: 8),
              const StlyleText(name: "Services Terms of Use"),
              const SizedBox(
                height: 20,
              ),
              const Text("Online Services Terms of Use"),
              const SizedBox(height: 6),
              const Text("Last Updated: April 27, 2021"),
              const SizedBox(height: 20),
              const Text(
                """PLEASE READ THESE TERMS OF USE ("TERMS") CAREFULLY BEFORE USING ANY OF THE DUNKIN' BRANDS (INCLUDING DUNKIN' DONUTS AND BASKIN-ROBBINS) WEBSITES, APPLICATIONS, PLATFORMS, LOYALTY PROGRAMS, STORED VALUE CARDS AND OTHER ONLINE PROGRAMS THAT POST A LINK TO THESE TERMS, OR THE MATERIALS, SOFTWARE AND CONTENT AVAILABLE IN OR THROUGH THEM (ALTOGETHER, "DD/BR ONLINE SERVICES")

BY DOWNLOADING OR USING ANY OF THE DD/BR ONLINE SERVICES, YOU AFFIRM THAT YOU ARE ABLE AND LEGALLY COMPETENT TO ACCEPT AND AGREE TO THESE TERMS AND OUR PRIVACY POLICY (https //www.dunkindonuts.com/en/privacy-policy). IF YOU DO NOT AGREE TO ANY OF THESE TERMS OR OUR PRIVACY POLICY, THEN YOU ARE NOT AUTHORIZED TO ACCESS OR USE ANY OF THE DD/BR ONLINE SERVICES""",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 20),
              Text(
                  """actions will be deemed to constitute a waiver of any part of these terms. Only a specific, written waiver signed by an authorized representative of Dunkin' Brands will have any legal effect whatsoever. To the extent permitted by applicable law, if any provision of these Terms is determined to be illegal, invalid or unenforceable under present or future law, such provision will be deemed to be deleted without affecting the enforceability of all remaining provisions. These Terms will inure to the benefit of and will be binding upon each party's successors and assigns. These Terms and the rights granted hereunder may be assigned by Dunkin' Brands but you may not assign them without the prior express written consent of Dunkin' Brands. The headings and captions contained herein are for convenience only.

26. Contact Dunkin' Brands

if you have questions regarding any of these Terms, you can email us at customerservice@durikinbrands.com (mailto customerservice@dunkinbrands.com"), call us at 1-800-859-5339, send us a fax at 1-781-737-4000, or write to us at Dunkin' Brands Customer Service, Dunkin' Brands, Inc. 130 Royal Street, Canton, MA 02021

2019 DD IP Holder LLC The Dunkin' Brands name. design, logos and related marks are trademarks of DD ip Holder LLC. All rights reserved""",
                  style: TextStyle(fontSize: 15))
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {},
                        child: Text(
                          "Decline",
                          style: TextStyle(
                              color: Colors.pink[800],
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.pink[800]),
                    child: TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                        },
                        child: Text(
                          "Accept",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                        )),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class StlyleText extends StatelessWidget {
  const StlyleText({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.italic),
    );
  }
}
