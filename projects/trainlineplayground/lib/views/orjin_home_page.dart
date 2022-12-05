import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:trainlineplayground/constants/size_constants/homepage_size.dart';
import 'package:trainlineplayground/constants/text_constants/constants.dart';
import 'package:trainlineplayground/constants/paddings/home_page_paddings.dart';
import 'package:trainlineplayground/core/data/api/user_client.dart';
import 'package:trainlineplayground/core/data/provider/user_model_sharedpf.dart';
import '../core/data/provider/home_page_state.dart';
import '../widgets/orjin_homepage_widgets.dart';
class OriginalHomePage extends StatefulWidget {
  const OriginalHomePage({super.key});
  @override
  State<OriginalHomePage> createState() => OriginalHomePageState();
}

class OriginalHomePageState extends State<OriginalHomePage> {
  late DateTime selectedDate = DateTime.now();
  late TextEditingController datepickercontroller;
  late String outboundString;
  late String returnString;
  late TextEditingController _returnpickercontroller;
  late bool? isUserLogIn = false;
  late bool mainUserAdded=true;
  @override
  void initState() {
    datepickercontroller = TextEditingController();
    outboundString = datepickercontroller.text;
    _returnpickercontroller = TextEditingController();
    returnString = _returnpickercontroller.text;
    isUserLogIn = UserModelState().isuserlogin;
    mainUserAdded = UserModelState().isPassAddded;
    super.initState();

    
  }
  static final userclient = UserClient(Dio(BaseOptions(contentType: 'application/json')));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [   
          const LiveTicketContainer(),
          const TopDefPadding(),
          Container(
            height: HomePageSize.textFieldHeight,
            width: HomePageSize.textFieldSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  CustomTextsConstants.outbound,
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
                Consumer<HomePageState>(
                  builder: (BuildContext context, pro, Widget? child) =>
                  Container(
                      height: HomePageSize.textFieldHeight,
                      width: HomePageSize.liveTimeSize,
                      child: TextField(
                        decoration:  InputDecoration(
                          label: Text(outboundString,textAlign: TextAlign.end,)
                        ),
                        textAlign: TextAlign.end,
                        controller: datepickercontroller,
                        onTap: () async {
                          DateTime? secilenTarih = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2024)
                              );
                           String formattedDate =
                                DateFormat('dd-MM-yyyy').format(secilenTarih!);
                          if (secilenTarih != null) {
                           
                            datepickercontroller.text = formattedDate;
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
            height: HomePageSize.textFieldHeight,
            width: HomePageSize.textFieldSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  CustomTextsConstants.Return,
                  style: TextStyle(color: Colors.black, fontSize: 21),
                ),
                Consumer<HomePageState>(
                  builder: (BuildContext context, value, Widget? child) =>
                  Container(
                      height: HomePageSize.textFieldHeight,
                      width: HomePageSize.liveTimeSize,
                      child: SingleChildScrollView(
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
                              
                                _returnpickercontroller.text = formattedDate;
                              
                            } else {}
                            // !!!! async oldugu icin extract edemiyorum
                          },
                        ),
                      )
                      ),
                ),
              ],
            ),
          ),
          const AddPassangerWidget(),
          const BottomSearchPadding(),
          const SearchWidget(),
          const BottomPadding(),
          const DiscountWidget(),
        ],
      ),
      bottomNavigationBar: const HomePageBottomNavBar()

    );
  }
}



