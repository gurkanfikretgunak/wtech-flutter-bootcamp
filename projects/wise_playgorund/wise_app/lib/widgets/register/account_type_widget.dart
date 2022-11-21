import 'package:wise_app/unit/imports.dart';


class AccountTypeWidget extends StatelessWidget {
  const AccountTypeWidget({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const RegisterAccountTypeTopText(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width,
                height: 440,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return AccountTypeItem(
                        size: size,
                        provider: provider,
                        title: RegisterTextConstants
                            .accountTypeItemContentList[index]["title"],
                        image: RegisterTextConstants
                            .accountTypeItemContentList[index]["imagePath"],
                        content: RegisterTextConstants
                            .accountTypeItemContentList[index]["content"],
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: 2),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
