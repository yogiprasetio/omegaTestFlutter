part of 'models.dart';

class TopUpGame{
  final int idGame;
  final String nameGame;
  final String picturePath;
  final int price;

  TopUpGame(
    this.idGame,
    this.nameGame,
    this.picturePath,
    this.price
  );

}

List<TopUpGame> topUpGames = [
  TopUpGame(1, "Mobile Legends", "assets/images/BFI.png", 15000),
  TopUpGame(1, "Mobile Legends", "assets/images/BFI.png", 15000),
  TopUpGame(1, "Mobile Legends", "assets/images/BFI.png", 15000),
  TopUpGame(1, "Mobile Legends", "assets/images/BFI.png", 15000),
  TopUpGame(1, "Mobile Legends", "assets/images/BFI.png", 15000),
  TopUpGame(1, "Mobile Legends", "assets/images/BFI.png", 15000),
];