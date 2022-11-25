import 'package:wise_app/unit/imports.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: provider.appBarColor,
        iconTheme: provider.appBarButtonColor,
        leading: IconButton(
          icon: const Icon(Icons.clear),
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          SizedBox(
            width: 100,
            child: TextButton(
              onPressed: () {
                provider.changeTheme();
              },
              child:const Text("Tema Değiş"),
            ),
          ),
        ],
      ),
      body: RegisterEmailWidget(
        size: size,
      ),
    );
  }
}
