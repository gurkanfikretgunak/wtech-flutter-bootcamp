import 'package:flutter/material.dart';
import 'package:trainlineplayground/core/data/api/user_client.dart';

import 'package:trainlineplayground/main.dart';

import '../constants/paddings/home_page_paddings.dart';
import '../constants/size_constants/homepage_size.dart';
import '../constants/text_constants/constants.dart';
import '../views/orjin_home_page.dart';

class FromStationWidget extends StatelessWidget {
  const FromStationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: HomePageSize.textFieldHeight,
        width: HomePageSize.textFieldSize,
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  const [
            TextFieldPadding(),
            Text(
              CustomTextsConstants.From,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            TextFieldPadding(),
            Text(
              CustomTextsConstants.DepartureStation,
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
                  const TopPadding(),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: HomePageSize.textFieldHeight,
                    width: HomePageSize.textFieldSize,
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: CustomTextsConstants.From, hintText: CustomTextsConstants.DepartureStation),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: HomePageSize.textFieldHeight,
                    width: HomePageSize.textFieldSize,
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: "to", hintText: CustomTextsConstants.destination),
                    ),
                  ),
                  const TopPadding(),
                  Row(
                    children: const [
                      IconPadding(),
                      Icon(Icons.settings_backup_restore_sharp),
                      Text(
                        CustomTextsConstants.recents,
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
        height: HomePageSize.textFieldHeight,
        width: HomePageSize.textFieldSize,
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  const[
             TextFieldPadding(),
             Text(
              CustomTextsConstants.too,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
             TextFieldPadding(),
             Text(
              CustomTextsConstants.DepartureStation,
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
                  const TopPadding(),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: HomePageSize.textFieldHeight,
                    width: HomePageSize.textFieldSize,
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: CustomTextsConstants.From, hintText: CustomTextsConstants.DepartureStation),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: HomePageSize.textFieldHeight,
                    width: HomePageSize.textFieldSize,
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: "to", hintText: CustomTextsConstants.destination),
                    ),
                  ),
                  const TopPadding(),
                  Row(
                    children: const [
                      IconPadding(),
                      Icon(Icons.settings_backup_restore_sharp),
                      Text(
                        CustomTextsConstants.recents,
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
      height: HomePageSize.discountSize,
      width: HomePageSize.textFieldSize,
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const LeftFifteenPadding(),
          Image.asset('assets/images/trainIcon.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SavingSimplePadding(),
              Text(
                CustomTextsConstants.savingSimple,
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
              ),
              SavingSimplePadding(),
              Text(
                CustomTextsConstants.railcardApp,
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
      onTap: () {
        Navigator.of(context).pushNamed('/findticket');
      },
      child: Container(
        alignment: Alignment.center,
        height: HomePageSize.textFieldHeight,
        width: HomePageSize.textFieldSize,
        decoration: BoxDecoration(
            color: Colors.lightGreen, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            TextFieldPadding(),
            TextFieldPadding(),
            Text(
              CustomTextsConstants.findTimes,
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

                   const CardVouchersPadding(),
                  const Text(CustomTextsConstants.passangers),
                  const DefaultPadding(),

                  FutureBuilder<List<Users>>(
                    
                    future: OriginalHomePageState.userclient.getUser(),
                    builder: (context, snapshot) {
                    if(snapshot.connectionState == ConnectionState.done){
                      final List<Users>? mainuser = snapshot.data;

                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: mainuser?.length,
                        itemBuilder: (context, index) {
                          return Container(
                            
                            child: Card(
                              child: ListTile(title: Text(mainuser![index].userName.toString())),
                            ),
                          );
                        } 
                        
                      );
                    }
                    else{
                      return const CircularProgressIndicator();
                    }
                    
                      }
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        const Text(CustomTextsConstants.adult,style: TextStyle(fontSize: 24),),
                        TextButton(onPressed: ()=> showModalBottomSheet(
                          
                          context: context,
                         builder:(context) =>
                          Column(
                            children: [
                              InkWell( //LISTVIEW BUILDERA CEVRILECEK
                                child: Container(
                                  
                                  width: double.infinity,
                                  height: HomePageSize.passangerSize,
                                  child:  const Center(child: Text(CustomTextsConstants.youthpass,style: TextStyle(fontSize: 30),)),
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              InkWell(
                                child: Container(
                                  
                                  width: double.infinity,
                                  height: HomePageSize.passangerSize,
                                  child: const Center(child: Text(CustomTextsConstants.adultpass,style: TextStyle(fontSize: 30),)),
                                ),
                                onTap: () {
                                  
                                },
                              ),
                              InkWell(
                                child: Container(
                                  
                                  width: double.infinity,
                                  height: HomePageSize.passangerSize,
                                  child: const Center(child: Text(CustomTextsConstants.oldpass,style: TextStyle(fontSize: 30),)),
                                ),
                                onTap: () {
                                  
                                },
                              )
                            ]
                          )
                         
                         ),
                         child: 

                         const Text(CustomTextsConstants.change,style: TextStyle(color: Colors.blue),)
                         
                         ),
                         
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: HomePageSize.textFieldHeight,
                    
                    child: InkWell(
                      onTap: ( )=> showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => Column(
                          children: [
                             const CardVouchersPadding(),
                            const Text(CustomTextsConstants.cards,style: TextStyle(fontSize: 24),),
                             const CardVouchersPadding(),
                            Container(
                              height: HomePageSize.searchSize,
                              width: HomePageSize.textFieldSize,
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
                            const CardVouchersPadding(),

                          ],
                        ),),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          
                          Text(CustomTextsConstants.loyalty,style: TextStyle(fontSize: 19),),
                          Icon(Icons.arrow_right_sharp)
                           
                        ],
                      ),
                    ),
                  )

                ],
              )),
      child: Container(
        height: HomePageSize.textFieldHeight,
        width: HomePageSize.textFieldSize,
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
                      Text("1 +${CustomTextsConstants.adult}"),
                      Icon(Icons.keyboard_arrow_right_sharp)
                    ],
                  ),
                  const LoyaltyPadding(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:const[ 
                       Text(
                      CustomTextsConstants.loyalty,
                      style: TextStyle(fontSize: 15),
                    ),
                    ]
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
            label: CustomTextsConstants.search),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.airplane_ticket_outlined)),
            label: CustomTextsConstants.myticket),
        BottomNavigationBarItem(
            icon: IconButton(onPressed: () {
              Navigator.of(context).pushNamed('/rightpage');  
              // kontrol sağla eğer giriş yapıldıysa account page y egitsin
              // api den kontrol sağla eğer giriş yapıldıysa account page e gitsin
            },
             icon: const Icon(Icons.person)),
            label: CustomTextsConstants.signin),
      ]);
  }
}

class HomePageBottomNavBar extends StatelessWidget {
  const HomePageBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          label: CustomTextsConstants.search),
      BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.airplane_ticket_outlined)),
          label: CustomTextsConstants.myticket),
      BottomNavigationBarItem(
          icon: IconButton(onPressed: () {
            
            Navigator.of(context).pushNamed('/rightpage');  
            // kontrol sağla eğer giriş yapıldıysa account page y egitsin
            // api den kontrol sağla eğer giriş yapıldıysa account page e gitsin
          },
           icon: const Icon(Icons.person)),
          label: CustomTextsConstants.signin),
    ]);
  }
}


class LiveTicketContainer extends StatelessWidget {
  const LiveTicketContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HomePageSize.liveTimeSize,
      width: double.infinity,
      color: Colors.purple,
      child: Column(
        children: const [
          LiveTicketPadding(),
          Text(
            CustomTextsConstants.liveTicket,
            style: TextStyle(color: Colors.white, fontSize: 21),
          ),
          LiveTicketBottomPadding(),
          FromStationWidget(),
          TextFieldBetweenPadding(),
          ToStationWidget(),
        ],
      ),
    );
  }
}


