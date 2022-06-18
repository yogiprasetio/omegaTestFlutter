part of 'widgets.dart';

class TopUpGames extends StatelessWidget {
  final TopUpGame topUpGame;

  TopUpGames(
    this.topUpGame,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 8, color: secondaryColor)
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage(topUpGame.picturePath),
                    fit: BoxFit.cover)),
          ),
          Container(
            child: Text(
              topUpGame.nameGame,
              style: blackFontStyle2,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
