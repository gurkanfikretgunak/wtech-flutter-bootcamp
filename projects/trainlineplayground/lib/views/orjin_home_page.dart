import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../core/data/provider/home_page_state.dart';
import '../widgets/orjin_homepage_widgets.dart';

class OriginalHomePage extends StatefulWidget {
  const OriginalHomePage({super.key});

  @override
  State<OriginalHomePage> createState() => OriginalHomePageState();
}

class OriginalHomePageState extends State<OriginalHomePage> {
  late DateTime selectedDate = DateTime.now();
  late TextEditingController _datepickercontroller;
  late String outboundString;
  late String returnString;
  late TextEditingController _returnpickercontroller;

 

  @override
  void initState() {
    super.initState();
    _datepickercontroller = TextEditingController();
    outboundString = _datepickercontroller.text;
    _returnpickercontroller = TextEditingController();
    returnString = _returnpickercontroller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.purple,
            child: Column(
              children: const [
                Padding(padding: EdgeInsets.only(top: 40)),
                Text(
                  "Live times & tickets",
                  style: TextStyle(color: Colors.white, fontSize: 21),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                FromStationWidget(),
                Padding(padding: EdgeInsets.all(5.0)),
                ToStationWidget(),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 10)),
          Container(
            height: 50,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Outbound',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
                Consumer<HomePageState>(
                  builder: (BuildContext context, value, Widget? child) =>
                  Container(
                      height: 50,
                      width: 250,
                      child: TextField(
                        decoration:  InputDecoration(
                          
                          label: Text(outboundString,textAlign: TextAlign.end,)
                        ),
                        textAlign: TextAlign.end,
                        controller: _datepickercontroller,
                        onTap: () async {
                          DateTime? secilenTarih = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2024));
                
                          if (secilenTarih != null) {
                            if (kDebugMode) {
                              print(secilenTarih);
                            }
                            String formattedDate =
                                DateFormat('dd-MM-yyyy').format(secilenTarih);
                            if (kDebugMode) {
                              print(formattedDate);
                            }
                            setState(() {
                              _datepickercontroller.text = formattedDate;
                            });
                          } else {}
                          // !!!! async oldugu icin extract edemiyorum
                        },
                      )
                      ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Return',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
                Consumer<HomePageState>(
                  builder: (BuildContext context, value, Widget? child) =>
                  Container(
                      height: 50,
                      width: 250,
                      child: TextField(
                        decoration:  InputDecoration(
                          
                          label: Text(returnString,textAlign: TextAlign.end,)
                        ),
                        textAlign: TextAlign.end,
                        controller: _returnpickercontroller,
                        onTap: () async {
                          DateTime? secilenTarih = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2024));
                
                          if (secilenTarih != null) {
                            if (kDebugMode) {
                              print(secilenTarih);
                            }
                            String formattedDate =
                                DateFormat('dd-MM-yyyy').format(secilenTarih);
                            if (kDebugMode) {
                              print(formattedDate);
                            }
                            setState(() {
                              _returnpickercontroller.text = formattedDate;
                            });
                          } else {}
                          // !!!! async oldugu icin extract edemiyorum
                        },
                      )
                      ),
                ),
              ],
            ),
          ),
          const AddPassangerWidget(),
          const Padding(padding: EdgeInsets.only(top: 8.0)),
          const SearchWidget(),
          const Padding(padding: EdgeInsets.all(10.0)),
          const DiscountWidget(),
          
        ],
      ),
      bottomNavigationBar: const GlobalCustomNavigationBar()

    );
  }
}






showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: const Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("AlertDialog"),
    content: const Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}