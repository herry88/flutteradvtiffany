part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subTitle: 'Login System',
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(
              defaultMargin,
              26,
              defaultMargin,
              6,
            ),
            child: Text(
              'Email Address',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type Your Email',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(
              defaultMargin,
              26,
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
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type Your Password',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 24.0,
            ),
            height: 45.0,
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45.0,
                    color: mainColor,
                  )
                : ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                    ),
                    child: const Text('SignIn'),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 24.0,
            ),
            height: 45.0,
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45.0,
                    color: greyColor,
                  )
                : ElevatedButton(
                    onPressed: () {
                      Get.to(SignUpPage());
                    },
                    style: ElevatedButton.styleFrom(
                      primary: greyColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Create New Account',
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
