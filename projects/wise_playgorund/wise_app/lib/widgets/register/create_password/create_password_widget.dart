import 'package:wise_app/unit/imports.dart';

class CreatePasswordWidget extends StatelessWidget {
  const CreatePasswordWidget({Key? key}) : super(key: key);

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
          width: size.width,
          height: size.height,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    RegisterCreatePasswordTopText(),
                    RegisterCreatePasswordTextField(),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                CreatePasswordRegisterButton(size: size),
              ],
            ),
          ]),
        ));
  }
}
