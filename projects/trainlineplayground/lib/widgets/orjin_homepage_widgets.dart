import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainlineplayground/core/data/api/user_client.dart';
import 'package:trainlineplayground/core/data/provider/user_model_sharedpf.dart';

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
        // UserModelState().removedata();
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
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            
                            child: Consumer<UserModelState>(
                              builder: (context, value, child) => 
                              Row(
                                children: [
                                  IconButton(onPressed: () {
                                    value.changePassangerAdd();
                                  }, icon: value.isPassAddded ? const Icon(Icons.check_box):const Icon(Icons.check_box_outlined)),
                                  Text(mainuser![index].userName.toString(),style: const TextStyle(fontSize: 23),),
                                ],
                              ),
                            )
                            
                          );
                        } 
                        
                      );
                    }
                    else{
                      return const CircularProgressIndicator();
                    }
                    
                      }
                  ),
                  Consumer<UserModelState>(
                    builder: (context, value, child) => 
                    SizedBox(
                      
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.totalPassanger,
                        itemBuilder:(context, index) => 
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            
                            child: Consumer<UserModelState>(
                              builder: (context, value, child) => 
                              Row(
                                
                                children: [
                                  IconButton(onPressed: () {
                                    value.changePassangerAdd();
                                  }, icon: value.isPassAddded ? const Icon(Icons.check_box):const Icon(Icons.check_box_outlined)),
                                  Text(value.passangerList[index],style: const TextStyle(fontSize: 19),),
                                  PopupMenuButton(itemBuilder: (context) => [
                                    PopupMenuItem(value: const Icon(Icons.edit),child: TextButton(onPressed: (){}, child:const Text('add details')),),
                                    PopupMenuItem(value: const Icon(Icons.edit),child: TextButton(onPressed: (){}, child:const Text('remove')),),
                                  ]
                                  
                                  
                                  )
                                ],
                              ),
                            )
                            
                          )
                  
                        ),
                    ),
                  ),

                  const LiveTicketBottomPadding(),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all()
                      ),
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children:const [
                          TextFieldPadding(),
                          Icon(Icons.add),
                          TextFieldPadding(),
                          Text("Add a passanger",style: TextStyle(fontSize: 23),),
                        ],
                      ),
                      onTap:() => showDialog(
                        
                        context: context,
                       builder:(context) =>  AlertDialog(
                        
                        title: const Text('Choose Passanger Type',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        content:                           
                          Column(
                            children: [
                              Consumer<UserModelState>(
                                builder: (context, passanger, child) {
                                  return InkWell(
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      children: const[
                                        TextFieldPadding(),
                                        Text('Youth (0-25 years)'),
                                      ],
                                    ),
                                    
                                  ),
                                  onTap: () {
                                    passanger.incrementYoung();
                                    passanger.changeType('Youth (0-25 years)');
                                    Navigator.pop(context);
                                  },
                                );
                                },
                            
                              ),
                              const SavingSimplePadding(),
                              Consumer<UserModelState>(
                                builder: (context, passanger, child) => 
                                InkWell(
                                  onTap: () {
                                      passanger.incrementAdult();
                                      passanger.changeType('Adult (26-59 years)');
                                      Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      children: const[
                                        TextFieldPadding(),
                                        Text('Adult (26-59 years)'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SavingSimplePadding(),
                              Consumer<UserModelState>(
                                builder: (context, passanger, child) => 
                                InkWell(
                                  onTap: () {
                                      passanger.incrementSenior();
                                      passanger.changeType('Senior (60+ years)');
                                      Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      children: const[
                                        TextFieldPadding(),
                                        Text('Senior (60+ years)'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SavingSimplePadding(),
                              InkWell(
                                child: Container(
                                  height: 50,
                                  child: Row(
                                    children: const[
                                      TextFieldPadding(),
                                      Text('Create passanger profile'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        
                        ),
                       ),
                       
                       )
                    ),  
                  
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.blueGrey[100]
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                        
                  //       const Text(CustomTextsConstants.adult,style: TextStyle(fontSize: 24),),
                  //       TextButton(onPressed: ()=> showModalBottomSheet(
                          
                  //         context: context,
                  //        builder:(context) =>
                  //         Column(
                  //           children: [
                  //             InkWell( //LISTVIEW BUILDERA CEVRILECEK
                  //               child: Container(
                                  
                  //                 width: double.infinity,
                  //                 height: HomePageSize.passangerSize,
                  //                 child:  const Center(child: Text(CustomTextsConstants.youthpass,style: TextStyle(fontSize: 30),)),
                  //               ),
                  //               onTap: () {
                                  
                  //               },
                  //             ),
                  //             InkWell(
                  //               child: Container(
                                  
                  //                 width: double.infinity,
                  //                 height: HomePageSize.passangerSize,
                  //                 child: const Center(child: Text(CustomTextsConstants.adultpass,style: TextStyle(fontSize: 30),)),
                  //               ),
                  //               onTap: () {
                                  
                  //               },
                  //             ),
                  //             InkWell(
                  //               child: Container(
                                  
                  //                 width: double.infinity,
                  //                 height: HomePageSize.passangerSize,
                  //                 child: const Center(child: Text(CustomTextsConstants.oldpass,style: TextStyle(fontSize: 30),)),
                  //               ),
                  //               onTap: () {
                                  
                  //               },
                  //             )
                  //           ]
                  //         )
                         
                  //        ),
                  //        child: 

                  //        const Text(CustomTextsConstants.change,style: TextStyle(color: Colors.blue),)
                         
                  //        ),
                         
                  //     ],
                  //   ),
                  // ),
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
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              icon: const Icon(Icons.airplane_ticket_outlined)),
          label: CustomTextsConstants.myticket),
      BottomNavigationBarItem(
          icon: IconButton(onPressed: () {
          
            if(UserModelState().isUserLoggedIn() == false){
              Navigator.of(context).pushNamed('/rightpage');
            }
            else{
              Navigator.of(context).pushNamed('/account');
            }
            
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


