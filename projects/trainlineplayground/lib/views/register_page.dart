import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trainlineplayground/core/constants.dart';

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
    ListViewBuilderItems(title: "Surname"), ];
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController surnameController;
  List<String> mycontrollers = [
    
  ];

  
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    surnameController = TextEditingController();
    super.initState();
  }
  
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            color: Colors.purple,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_left_rounded),color: Colors.white,),
                const Text("New customer",style: TextStyle(fontSize: 20,color: Colors.white),)
              ]
              ),
          ),
          ListView.builder(
            padding: const EdgeInsets.only(left: 15,right: 15),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: textfieldItems.length,
            itemBuilder: (context, index){
              return Expanded(
                  child: TextFormField(
                    
                    
                    decoration: InputDecoration(
                      
                      labelText: textfieldItems[index].title
                    ),
                  ),
                
              );
              
            }
            )


        ],
      ),
    );
  }
}
