import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/data_class.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {

  List<MainClass> dataclass = [
    MainClass(info: 'fgnsdfguohsfdgnsdfg', kulupText: 'okculuk kulubu', tarih: '7 agustos 2001', uniText: 'Çukurova Üniversitesi'),
    MainClass(info: 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', kulupText: 'fight club', tarih: '6 kasım 1999', uniText: 'Çukurova Üniversitesi'),
    MainClass(info: 'fgnsdfguohsfdgnsdfg', kulupText: 'kebenistler toplulugu', tarih: '11 eylül 2013', uniText: 'Çukurova Üniversitesi'),
    MainClass(info: 'fgnsdfguohsfdgnsdfg', kulupText: 'sevip sevilmeyenler kulubu', tarih: '17 agustos 2001', uniText: 'Çukurova Üniversitesi'),
  ]; // API DEN CEKILECEK RETROFIT KULLANILACAK

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              constraints: const BoxConstraints(maxHeight: 200, maxWidth: 200),
              child: Image.asset('lib/assets/images/logoesas.png')),
          const Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF02A28F)
        ),
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(8)),
          const DuyuruRow(),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            height: 490,
            width: 367,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: dataclass.length,
              itemBuilder: (context, index) {
                return Card(
                  
                  child: Container(
                    
                    child: Column(
                      children: [
                        Container(
                          height: 143,
                          width: double.infinity,
                          color: Colors.yellow,
                        ),
                        
                          Column(
                            
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Row(
                                
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(dataclass[index].uniText),
                                ],
                              ),
                              Row(
                                
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(padding: EdgeInsets.only(left: 10)),
                                  Text('By ${dataclass[index].kulupText}'),
                                ],
                              ),
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              Row(
                                
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(dataclass[index].info),
                                ],
                              ),
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              Row(
                                
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(padding: EdgeInsets.only(left: 10)),                                  
                                  Text(dataclass[index].tarih),
                                ],
                              ),
                            ],
                          ),
                        
                      ],
                    ),
                  ),
        );
              },),
          ),
          const Spacer()
          
        ],
      ),
    );
  }
}

class DuyuruRow extends StatelessWidget {
  const DuyuruRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 370,
          decoration: BoxDecoration(
            color: const Color(0xFF02A28F),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text("Duyurular")
            ],
          ),
        ),
      ],
    );
  }
}
