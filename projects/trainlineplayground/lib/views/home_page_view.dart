import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../widgets/ticket_page_widgets.dart';

class HomeTicketPage extends StatelessWidget {
  const HomeTicketPage({super.key});

  // List<Dest> veri = [];
  // late Future destinationList = AddList().getAndAddDestinations(veri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.purple,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 40)),
                const Text(
                  "Live times & tickets",
                  style: TextStyle(color: Colors.white, fontSize: 21),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                const FromInkWell(),
                const Padding(padding: EdgeInsets.all(5.0)),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          "      to:",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          "Destination Station",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => showModalBottomSheet(
                      isScrollControlled: true, // full height sağlar
                      context: context,
                      builder: (context) => Column(
                            children: [
                              const Padding(padding: EdgeInsets.only(top: 50)),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 50,
                                width: 350,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      labelText: "from",
                                      hintText: 'departure station'),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 50,
                                width: 350,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      labelText: "to",
                                      hintText: 'destination station'),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 50)),
                              Row(
                                children: const [
                                  Padding(padding: EdgeInsets.only(left: 30)),
                                  Icon(Icons.settings_backup_restore_sharp),
                                  Text(
                                    "recents",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ],
                              ),
                            ],
                          )),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0,top: 10),
              child: Container(
                    height: 50,
                    width: 350, 
                child: TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime.now(),
                          maxTime: DateTime(2024, 1, 1), onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), );
                    },
                    child: Row(
                      children:const [
                         Text(
                                'Outbound',
                                  style: TextStyle(color: Colors.black,fontSize: 21),
                        ),
                        
                      ],
                    )
                    ),
                    
              )
          ),
          Container(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0,top: 10),
              child: Container(
                    height: 50,
                    width: 350, 
                child: TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime.now(),
                          maxTime: DateTime(2024, 1, 1), onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), );
                    },
                    child: Row(
                      children:const [
                         Text(
                                'Return',
                                  style: TextStyle(color: Colors.black,fontSize: 21),
                        ),
                        
                      ],
                    )
                    ),
                    
              )
          )
        ],
      ),
    );
  }
}
