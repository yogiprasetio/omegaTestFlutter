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
                          SizedBox(width: 60,),
                          Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DataList()));
                                },
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                textColor: thirdColor,
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 100,
                                  decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.0),
                                    color: fourthColor
                                  ),
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    "View Table User",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
