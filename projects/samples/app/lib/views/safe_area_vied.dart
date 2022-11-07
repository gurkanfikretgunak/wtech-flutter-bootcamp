import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';


class SafeAreaView extends StatelessWidget {
  const SafeAreaView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,

      child: SafeArea(
         top: true,
        child:Opacity(
          opacity: 0.50, // matlık parlaklık ayarı
          child:Column(
            children: [
              Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              ),
              Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                children: const [
                  Text("data"),
                  Text("data2")
                ],
                
              ),
              ),
              Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
              ),
            ],
          ), 
        
        )
       
        
      ),
    );
  }
}