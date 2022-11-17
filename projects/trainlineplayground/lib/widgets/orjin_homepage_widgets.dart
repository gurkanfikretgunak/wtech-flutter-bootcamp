import 'package:flutter/material.dart';

class FromStationWidget extends StatelessWidget {
  const FromStationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              "From:",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              "Departure Station",
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
                          labelText: "from", hintText: 'departure station'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: 350,
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: "to", hintText: 'destination station'),
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
    );
  }
}

class ToStationWidget extends StatelessWidget {
  const ToStationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
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
                          labelText: "from", hintText: 'departure station'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: 350,
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: "to", hintText: 'destination station'),
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
    );
  }
}

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
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
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.lightGreen, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(padding: EdgeInsets.only(left: 10)),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              "Find Times and Prices",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class AddPassangerWidget extends StatelessWidget {
  const AddPassangerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showModalBottomSheet(
          isScrollControlled: true, // full height sağlar
          context: context,
          builder: (context) => Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  const Text("Passengers"),
                  const Padding(padding: EdgeInsets.all(8)),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        const Text("     Adult",style: TextStyle(fontSize: 24),),
                        TextButton(onPressed: ()=> showModalBottomSheet(
                          
                          context: context,
                         builder:(context) =>
                          Column(
                            children: [
                              InkWell( //LISTVIEW BUILDERA CEVRILECEK
                                child: Container(
                                  
                                  width: double.infinity,
                                  height: 80,
                                  child: const Center(child: Text("Youth (0-25 years)",style: TextStyle(fontSize: 30),)),
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              InkWell(
                                child: Container(
                                  
                                  width: double.infinity,
                                  height: 80,
                                  child: const Center(child: Text("Youth (0-25 years)",style: TextStyle(fontSize: 30),)),
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              InkWell(
                                child: Container(
                                  
                                  width: double.infinity,
                                  height: 80,
                                  child: const Center(child: Text("Youth (0-25 years)",style: TextStyle(fontSize: 30),)),
                                ),
                                onTap: () {
                                  
                                },
                              )
                            ]
                          )
                         
                         ),
                         child: 

                         const Text("Change     ",style: TextStyle(color: Colors.blue),)
                         
                         ),
                         
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    
                    child: InkWell(
                      onTap: ( )=> showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => Column(
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 30)),
                            const Text("Cards & vouchers",style: TextStyle(fontSize: 24),),
                            const Padding(padding: EdgeInsets.only(top: 30)),
                            Container(
                              height: 30,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.circular(15),
                                
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.search),
                                  labelText: 'Search'
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 30)),

                          ],
                        ),),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          
                          Text("     Loyalty cards & vouchers",style: TextStyle(fontSize: 19),),
                          Icon(Icons.arrow_right_sharp)
                           
                        ],
                      ),
                    ),
                  )

                ],
              )),
      child: Container(
        height: 50,
        width: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.person),
            InkWell(
              child: Column(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}


class GlobalCustomNavigationBar extends StatelessWidget {
  const GlobalCustomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
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
      ]);
  }
}