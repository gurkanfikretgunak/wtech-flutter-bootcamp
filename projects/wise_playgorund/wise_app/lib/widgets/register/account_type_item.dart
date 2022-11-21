
import 'package:wise_app/unit/imports.dart';

class AccountTypeItem extends StatelessWidget {
  const AccountTypeItem({
    Key? key,
    required this.size,
    required this.provider,
    required this.image,
    required this.title,
    required this.content,
  }) : super(key: key);

  final Size size;
  final ThemeProvider provider;
  final String image;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 120,
              width: 90,
              child: Image.asset(image)),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            height: 130,
            width: size.width - 165,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SizedBox(height: 17,),
                  Text(
                    title,
                    style:RegisterStyle.registerAccountTypeTitleStyle(provider) ,
                  ),
                  Text(
                    content,
                    textAlign: TextAlign.left,
                    style: RegisterStyle.registerAccountTypeContentStyle(provider),
                  ),

                ],
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios,color: Colors.blue,size: 18,),
        ],
      ),
    );
  }
}