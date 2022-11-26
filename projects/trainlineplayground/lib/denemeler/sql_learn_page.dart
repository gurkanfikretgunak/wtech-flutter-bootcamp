



import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'sqllite_deneme2.dart';
import 'sqllite_deneme.dart';

class SqlLearn extends StatefulWidget {
  const SqlLearn({super.key});

  @override
  State<SqlLearn> createState() => SqlLearnState();
}

class SqlLearnState extends State<SqlLearn> {

  late DataBase handler;
  Future<int> addUser() async{
    MyUserModel mainUser = MyUserModel(id: 1, useremail: "aaaa@aaa.com", username: "ulasfather");

    List<MyUserModel> myusermodel = [mainUser];
    return await handler.insertUser(myusermodel);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    handler = DataBase();
    handler.initializeDB().whenComplete(() async {
      await addUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: handler.retrieveUser(1),
          builder:
              (BuildContext context, AsyncSnapshot<List<MyUserModel>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8.0),
                      title: Row(
                        children: [
                          Text(snapshot.data![index].username),
                          const Padding(padding: EdgeInsets.all(8.0)),
                          Text(snapshot.data![index].useremail)
                        ],
                      ),
                      subtitle: Text(snapshot.data![index].id.toString()),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      );
    
  }
}