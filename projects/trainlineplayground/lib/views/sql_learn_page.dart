



import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/init/sqllite_deneme.dart';

class SqlLearnView extends StatefulWidget {
  const SqlLearnView({super.key});

  @override
  State<SqlLearnView> createState() => SqlLearnViewState();
}

class SqlLearnViewState extends State<SqlLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: FutureBuilder<List<OrjinUserModel>>(
          future: DatabaseHelper.instance.getUser(),
          builder: (context, AsyncSnapshot<List<OrjinUserModel>> snapshot) {
            if(!snapshot.hasData){
              return Center(child: Text("loading..."));
            }
            return  snapshot.data!.isEmpty ? Center(child: Text("data yok!"),)
            :ListView(
              children: 
                snapshot.data!.map((userdb) {
                  return Center(
                    child: ListTile(
                      title: Text(userdb.userName),
                    ),
                  );
                }).toList(),
              
            );
            
          },
        ),
      ),
      floatingActionButton: IconButton(onPressed: () async {
        await DatabaseHelper.instance.addUser(
          OrjinUserModel(userName: 'ulasfather', userEmail: 'aaaaaaaaaaaaa@aaaaaa.aaaa')
        );
      }, icon: Icon(Icons.add)),
    );
  }
}