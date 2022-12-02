import 'package:wise_app/unit/imports.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/personel.png"),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text("ahmet@ahmetaydin.dev")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Personel account"),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    const Text("Invite your friends"),
                    const Spacer(),
                    Container(
                      width: 80,
                      height: 35,
                      color: Colors.grey.shade200,
                      child:
                          TextButton(onPressed: () {}, child:const Text("Copy link")),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 15),
              child: SizedBox(
                width: size.width,
                child: Container(
                  height: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 15.0,bottom: 50,right: 10),
              child: SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    SizedBox(
                        width: 55,
                        height: 55,
                        child: Image.asset("assets/images/gift.png")),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: SizedBox(
                        height: 55,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:const [
                                  Text("Invite and earn 100 SGD"),
                                ],
                              ),
                            ),
                           const Flexible(child: Text("Earn 100 SGD for every 3 friends who transfer over 250 SGD."))
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined,size: 18,),
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: size.width,
              child: Row(
                children:const [
                   Text("Account services"),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 18,top: 5),
            child: SizedBox(
              width: size.width,
              child: Container(
                height: 1,
                color: Colors.grey.shade300,
              ),
            ),
          ),
            SizedBox(
              height: 400,
              child: ListView.separated(
                physics:const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 10),
                      child: SizedBox(
                        width: size.width,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 25,
                                height: 25,
                                child:
                                    Image.asset("assets/images/account_details.png")),
                            const SizedBox(width: 15,),
                            const  Text("Account details"),
                            const  Spacer(),
                            const  Icon(Icons.arrow_forward_ios_outlined,size: 18,),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 23,
                    );
                  },
                  itemCount: 8),
            ),
        ],
      ),
          )),
    );
  }
}
