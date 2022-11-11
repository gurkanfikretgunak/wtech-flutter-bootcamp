import 'package:flutter/material.dart';

void main()
 {
  runApp
  (
   MyWidget()
  );

}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[900],
      child: Center
      (child:Text("sweetgreen",textDirection: TextDirection.ltr,) 
      
      ),
      
    );
  }
}

