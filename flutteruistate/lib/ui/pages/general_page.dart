part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  GeneralPage({
    Key? key,
    this.title = "Title",
    this.subTitle = "Subtitle",
    this.onBackButtonPressed,
    this.child,
    this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultMargin),
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    children: [
                      onBackButtonPressed != null
                          ? GestureDetector(
                              onTap: () {
                                if (onBackButtonPressed != null) {
                                  onBackButtonPressed!();
                                }
                              },
                              child: Container(
                                width: 24.0,
                                height: 24.0,
                                margin: const EdgeInsets.only(
                                  right: 26.0,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/back_arrow.png'),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),
                      Column(
                        children: [
                          Text(
                            title!,
                            style: GoogleFonts.poppins(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            subTitle!,
                            style: GoogleFonts.poppins(
                              color: "8D92A3".toColor(),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: defaultMargin,
                  width: double.infinity,
                  color: "FAFAFC".toColor(),
                ),
                child ?? SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
