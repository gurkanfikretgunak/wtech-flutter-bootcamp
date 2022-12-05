
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:onboarding/onboarding.dart';

import '../../service/MentalState/mental_state_api.dart';

class MentalStateCard extends StatefulWidget {
  const MentalStateCard({Key? key}) : super(key: key);

  @override
  State<MentalStateCard> createState() => _MentalStateCardState();
}

class _MentalStateCardState extends State<MentalStateCard> {
  FutureBuilder<List<MentalState>> _builder(BuildContext context) {
    final client =
        RestClient(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder<List<MentalState>>(
        future: client.getMentalState(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final List<MentalState>? mentalState = snapshot.data;
            return _buildMentalStates(context, mentalState!);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  ListView _buildMentalStates(
      BuildContext context, List<MentalState> mentalState) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
      itemCount: mentalState.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          height: screenHeight / 7,
          width: screenWidth / 2.0,
          child: Card(
            color: Color.fromARGB(255, 249, 249, 249),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(mentalState[index].picture),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    mentalState[index].title,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 43, 44, 88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    mentalState[index].text,
                    style: TextStyle(
                        color: Color.fromARGB(255, 43, 44, 80),
                        fontSize: screenWidth / 23),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 238, 238),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Text(
                          mentalState[index].time,
                          style: TextStyle(
                              color: Color.fromARGB(255, 114, 113, 152),
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 30,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 238, 238),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                              child: Text(
                            mentalState[index].count,
                            style: TextStyle(
                                color: Color.fromARGB(255, 114, 113, 152),
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight - 359,
      width: screenWidth - 40,
      child: _builder(context),
    );
  }
}