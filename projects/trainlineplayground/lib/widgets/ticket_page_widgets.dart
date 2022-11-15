import 'package:flutter/material.dart';

class FromInkWell extends StatelessWidget {
  const FromInkWell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:const [
            Padding(padding: EdgeInsets.only(left: 10)),
            Text("From:",style: TextStyle(fontSize: 15,color: Colors.white),),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text("Departure Station",style: TextStyle(fontSize: 18,color: Colors.white),),
          ],
        ),
      ),
      onTap: () => showModalBottomSheet(
        isScrollControlled: true, // full height sağlar
        context: context,
        builder: (context) => Column(
          children: [
            
               const Padding(padding: EdgeInsets.only(top: 50)),
               Container(
                 alignment: Alignment.centerLeft,
                 height: 50,
                 width: 350,
                 child: const TextField(
                  decoration: InputDecoration(
                    labelText: "from",
                    hintText: 'departure station'
                  ),
              ),
               ),
               Container(
                 alignment: Alignment.centerLeft,
                 height: 50,
                 width: 350,
                 child: const TextField(
                  decoration: InputDecoration(
                    labelText: "to",
                    hintText: 'destination station'
                  ),
              ),
               ),
               const Padding(padding: EdgeInsets.only(top: 50)),
               Row(
                 children: const[
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Icon(Icons.settings_backup_restore_sharp),
                  Text("recents",style: TextStyle(fontSize: 24),),
                 ],
               ),
              
            
          ],
        )
        
        ),
    );
  }
}

class ToInkWell extends StatelessWidget {
  const ToInkWell(Set set, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:const [
            Padding(padding: EdgeInsets.only(left: 10)),
            Text("      to:",style: TextStyle(fontSize: 15,color: Colors.white),),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text("Destination Station",style: TextStyle(fontSize: 18,color: Colors.white),),
          ],
        ),
      ),
      onTap: () => showModalBottomSheet(
        isScrollControlled: true, // full height sağlar
        context: context,
        builder: (context) => Column(
          children: [
            
               const Padding(padding: EdgeInsets.only(top: 50)),
               Container(
                 alignment: Alignment.centerLeft,
                 height: 50,
                 width: 350,
                 child: const TextField(
                  decoration: InputDecoration(
                    labelText: "from",
                    hintText: 'departure station'
                  ),
              ),
               ),
               Container(
                 alignment: Alignment.centerLeft,
                 height: 50,
                 width: 350,
                 child: const TextField(
                  decoration: InputDecoration(
                    labelText: "to",
                    hintText: 'destination station'
                  ),
              ),
               ),
               const Padding(padding: EdgeInsets.only(top: 50)),
               Row(
                 children: const[
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Icon(Icons.settings_backup_restore_sharp),
                  Text("recents",style: TextStyle(fontSize: 24),),
                 ],
               ),
              
            
          ],
        )
        
        ),
    );
  }
}