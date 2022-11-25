import 'package:wise_app/unit/imports.dart';
import 'package:wise_app/widgets/register/all_done/register_all_done_button.dart';
import 'package:wise_app/widgets/register/all_done/register_all_done_content_widget.dart';
import 'package:wise_app/widgets/register/all_done/register_all_done_icon_widget.dart';

class RegisterAllDoneWidget extends StatelessWidget {
  const RegisterAllDoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstants.splashBackgroundColor,
        iconTheme: provider.appBarButtonColor,
        leading: IconButton(
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage())),
            icon: const Icon(Icons.clear)),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: ColorConstants.splashBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const RegisterAllDoneIconWidget(),
            RegisterAllDoneContent(size: size),
            const Spacer(),
            AllDoneWidgetOkButton(
              size: size,
            )
          ],
        ),
      ),
    );
  }
}
