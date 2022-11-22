import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:trainlineplayground/core/constants.dart';

import '../core/data/provider/register_page_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  List<ListViewBuilderItems> textfieldItems = [
    ListViewBuilderItems(title: "Email"),
    ListViewBuilderItems(title: "Create password"),
    ListViewBuilderItems(title: "First name"),
    ListViewBuilderItems(title: "Surname"),
  ];
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController surnameController;
  late List<TextEditingController> mycontrollers = [
    emailController,
    passwordController,
    nameController,
    surnameController
  ];
  late bool isConfirmed = true;
  late bool isOk;
  

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    surnameController = TextEditingController();
    mycontrollers;
    isConfirmed = TextFormStateProvider().isConfirmed;
    isOk = TextFormStateProvider().isOk;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextFormStateProvider confirmInfo = Provider.of<TextFormStateProvider>(context);
    return ChangeNotifierProvider(
      create: (context) =>TextFormStateProvider(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              color: Colors.purple,
              height: 100,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_left_rounded),
                  color: Colors.white,
                ),
                const Text(
                  "New customer",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ]),
            ),
            ListView.builder(
                padding: const EdgeInsets.only(left: 15, right: 15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: textfieldItems.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: TextFormField(
                      controller: mycontrollers[index],
                      decoration:
                          InputDecoration(labelText: textfieldItems[index].title),
                    ),
                  );
                }),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 100,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Be first to hear"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Flexible(
                          child: Text(
                              "Yes, ı want great discounts,sales,offers and more from Trainline.")),
                      Consumer<TextFormStateProvider>(
                        builder: (context,TextFormStateProvider isOkey, child) => 
                         IconButton(
                            onPressed: () {
                              isOkey.changeButton();
                            },
                            icon: isOkey.isOk? const Icon(Icons.offline_pin_outlined):const Icon(Icons.offline_pin_rounded)
                            
                            ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            
            Consumer<TextFormStateProvider>(
              
              builder: (context, myvalue, child) => 
              Container(
                
                child:const AcceptButton()
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DeclineButton extends StatelessWidget {
  const DeclineButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( // eğer isconfirmed true ise bu   değilse null ver
        onPressed: null,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.greenAccent
        ),
        
        child: Container(
          alignment: Alignment.center,
          
          height: 50,
          width: 300,
          child: const Text(
            "Create Account",
            style: TextStyle(fontSize: 18,color: Colors.black),
          ),
        )
        );
  }
}

class AcceptButton extends StatelessWidget {
  const AcceptButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( // eğer isconfirmed true ise bu   değilse null ver
        onPressed: (){

        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue
        ),
        
        child: Container(
          alignment: Alignment.center,
          
          height: 50,
          width: 300,
          child: const Text(
            "Create Account",
            style: TextStyle(fontSize: 18,color: Colors.black),
          ),
        )
        );
  }
}
