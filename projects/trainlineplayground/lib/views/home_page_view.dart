import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider/provider.dart';
import 'package:trainlineplayground/core/data/provider/home_page_state.dart';
import '../widgets/ticket_page_widgets.dart';

// ignore: must_be_immutable
class HomeTicketPage extends StatefulWidget {
  HomeTicketPage({super.key});

  @override
  State<HomeTicketPage> createState() => _HomeTicketPageState();
}

class _HomeTicketPageState extends State<HomeTicketPage> {
  late DateTime secilenTarih;

  @override
  void initState() {
   
    super.initState();
    secilenTarih = Provider.of<HomePageState>(context,listen: false).selectedDate;
  }
  // List<Dest> veri = [];
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
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10),
                child: Container(
                  height: 50,
                  width: 350,
                  child: TextButton(
                      onPressed: () {
                        DatePicker.showDatePicker(
                          
                          context,
                          showTitleActions: true,
                          minTime: DateTime.now(),
                          maxTime: DateTime(2024, 1, 1),
                          onChanged: (date) {
                            if (kDebugMode) {
                              print('change $date');
                            }
                            
                          },
                          onConfirm: (date) {
                            if (kDebugMode) {
                              print('confirm $date');
                            }
                           HomePageState().selectedDate = date;
                           HomePageState().readDate();
                          },
                          currentTime: DateTime.now(),
                          
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Outbound',
                            style: TextStyle(color: Colors.black, fontSize: 21),
                          ),
                          Consumer<HomePageState>(
                            builder: ( context, homePageStateObject,  child) =>
                            Row(
                              children:  [
                                Text(
                                  "$secilenTarih",
                                  style:   const TextStyle(color: Colors.black),
                                ),
                                  const Icon(Icons.keyboard_arrow_right),
                              ],
                            ),
                          )
                        ],
                      )),
                )),
            Container(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10),
                child: Container(
                  height: 50,
                  width: 350,
                  child: TextButton(
                      onPressed: () {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          minTime: DateTime.now(),
                          maxTime: DateTime(2024, 1, 1),
                          onChanged: (date) {
                            print('change $date');
                          },
                          onConfirm: (date) {
                            print('confirm $date');
                          },
                          currentTime: DateTime.now(),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text(
                            'Return',
                            style: TextStyle(color: Colors.black, fontSize: 21),
                          ),
                          Row(
                            children: const[
                              Text("add return",style: TextStyle(color: Colors.black,),),
                              Icon(Icons.keyboard_arrow_right),
                            ]
                          )
                        ],
                      )),
                )
                ),
                 InkWell(
              child: Container(
                height: 50,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.person),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text("1 Adult"),
                            Icon(Icons.keyboard_arrow_right_sharp)
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(top: 8.0)),
                        const Text(
                          "Add loyalyty cards & vouchers",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 8.0)),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
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
                      "Find Times and Prices",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              height: 90,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 15)),
                  Image.asset('lib/assets/images/trainIcon.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        "Make saving simple",
                        style:
                            TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        "Save 1/2 with a digital Railcard in-app",
                        style: TextStyle(fontSize: 15),
                      ),
    
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.airplane_ticket_outlined)),
              label: 'My Tickets'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
              label: 'Sign In'),
        ]),
      );
    
  }
}
