import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trainlineplayground/core/data/models/destinations.dart';

import '../core/data/api/deneme_api.dart';


class HomeTicketPage extends StatelessWidget {
   HomeTicketPage({super.key});

  List<Dest> object = <Dest>[
    
  ]
  
  Future<Dest> futureDest = RestClient(Dio(BaseOptions(contentType: "application/json"))).getDest().then((value) => object.add(value));
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.purple,
            child: Column(
              children:const [
                Padding(padding: EdgeInsets.only(top: 40)),
                Text("data"),
                FutureBuilder<RestClient>  _buildBody(BuildContext context)(builder: )
              ],
            ),
          ),
        ],
      ),
    );
  }
}