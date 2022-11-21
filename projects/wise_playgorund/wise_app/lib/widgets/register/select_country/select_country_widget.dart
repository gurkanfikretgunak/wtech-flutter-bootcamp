import 'package:wise_app/unit/imports.dart';
import 'package:wise_app/widgets/register/select_country/select_country_bottom_text.dart';
import 'package:wise_app/widgets/register/select_country/select_country_next_button.dart';
import 'package:wise_app/widgets/register/select_country/select_country_textfield.dart';
import 'package:wise_app/widgets/register/select_country/select_country_top_text.dart';

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
                children: [
                  RegisterSelectCountryTopText(),
                  SizedBox(
                    height: 20,
                  ),
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
