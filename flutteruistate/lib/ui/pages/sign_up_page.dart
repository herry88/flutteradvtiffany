part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return GeneralPage(
      title: 'Sign Up',
      subTitle: 'Register and Eat',
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: 110,
            height: 110.0,
            margin: const EdgeInsets.only(
              top: 16.0,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/photo_border.png',
                ),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://i.pinimg.com/474x/8a/f4/7e/8af47e18b14b741f6be2ae499d23fcbe.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              16,
              defaultMargin,
              6,
            ),
            child: Text(
              'Full Name',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type You Full Name',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(
              defaultMargin,
              16,
              defaultMargin,
              6,
            ),
            child: Text(
              'Email',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type You Email',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(
              defaultMargin,
              16,
              defaultMargin,
              6,
            ),
            child: Text(
              'Password',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type You Password',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 24.0),
            height: 45.0,
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                ),
              ),
              child: Text(
                'Continue',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
