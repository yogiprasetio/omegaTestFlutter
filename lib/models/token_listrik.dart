part of 'models.dart';

class TokenListrik {
  final int id;
  final String name;
  final String picturePath;
  final int nominal;
  final String nopel;
  final int price;

  TokenListrik(this.id, this.name, this.picturePath, this.nominal, this.nopel, this.price);
}

TokenListrik tokenListrik = TokenListrik(1, "PLN", 'assets/images/PLN.png',30000, "DIRAHASIAKAN", 32500);
