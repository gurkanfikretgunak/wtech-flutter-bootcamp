import 'package:wise_app/unit/imports.dart';


class SelectCountryWidget extends StatelessWidget {
  const SelectCountryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: provider.appBarColor,
        iconTheme: provider.appBarButtonColor,
        actions: [
          SizedBox(
            width: 100,
            child: TextButton(
              onPressed: () {
                provider.changeTheme();
              },
              child: const Text("Tema Değiş"),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children:const [
                  RegisterSelectCountryTopText(),
                  RegisterSelectCountryTextField(),

                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                RegisterSelectCountryBottomText(size: size,),
                RegisterSelectCountryNextButton(size:size,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
