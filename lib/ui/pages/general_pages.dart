part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  // const GeneralPage({Key? key}) : super(key: key);

  final String title;
  final Function onLogoButtonPressed;
  final Widget child;
  // final Color backColor;

  @immutable
  GeneralPage({
    this.title = "Logo",
    required this.onLogoButtonPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: secondaryColor),
          SafeArea(child: Container(color: mainColor)),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      width: double.infinity,
                      height: 80,
                      color: secondaryColor,
                      child: Row(
                        children: [
                          onLogoButtonPressed != null
                          ? GestureDetector(
                            onTap: (){
                            if (onLogoButtonPressed != null)
                              {
                                onLogoButtonPressed(){
                                  print('saya ditekan');
                                };
                              }
                            },
                            child: Container(
                            width: 75,
                            height: 75,
                            margin: EdgeInsets.only(right: 24),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(logo))),
                          ),
                          ) : SizedBox(),
                        ],
                      ),
                    ),
                    child,
                    SizedBox(height: 25,),
                    HowToBuy()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
