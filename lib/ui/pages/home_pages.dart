part of 'pages.dart';

class HomePage extends StatefulWidget {
  // HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  // int _value = 1;
  int _index = 0;
  int _index1 = 0;
  // int _index2 = 0;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
        title: 'logo',
        onLogoButtonPressed: () {},
        child: Container(
          margin: EdgeInsets.fromLTRB(
              0, defaultMargin, 0, 6),
          child: Column(
            children: [
              //Text Jenis Produk
              Container(
                  child: Text(
                'PULSA',
                style: blackFontStyle1,
              )), //end Text
              //Container Product Card Pulsa
              Container(
                height: 185,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                child: PageView.builder(
                  itemCount: mockPulsas.length,
                  controller: PageController(viewportFraction: 0.4),
                  onPageChanged: (int index)=>setState(() =>
                    _index=index
                  ),
                  itemBuilder: (context,i){
                    return Transform.scale(
                      scale:  i== _index ? 1 : 0.9,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: (_index == mockPulsas.first) ? defaultMargin : 0,
                          right: defaultMargin
                        ),
                        child: ProductCard(mockPulsas[_index]),
                      ),
                    );
                }) 
              ),
              //Text Jenis Produk
              Container(
                  child: Text(
                'Top-Up Game',
                style: blackFontStyle1,
              )), //end Text
              //container product Token
              Container(
                height: 180,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                child: PageView.builder(
                  itemCount: topUpGames.length,
                  controller: PageController(viewportFraction: 0.4),
                  onPageChanged: (int index)=>setState(() =>
                    _index1= index
                  ),
                  itemBuilder: (context,i){
                    return Transform.scale(
                      scale:  i== _index1 ? 1 : 0.9,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: (_index1 == topUpGames.first) ? defaultMargin : 0,
                          right: defaultMargin
                        ),
                        child: TopUpGames(topUpGames[_index1]),
                      ),
                    );
                }) 
              ),
              //Text Jenis Produk
              Container(
                  child: Text(
                'Token Listrik',
                style: blackFontStyle1,
              )), //end Text
              Container(
                child: TokenListrikCard(tokenListrik),
              ),
            ],
          ),
        ));
  }
}