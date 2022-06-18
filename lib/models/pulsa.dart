part of 'models.dart';

class Pulsa{
  final int id;
  final String name;
  final int price;
  final String picturePath;
  
  Pulsa (
    this.id,
    this.name,
    this.picturePath,
    this.price
  );
}

List <Pulsa> mockPulsas = [
  Pulsa(1,"Indosat Ooredoo", "assets/images/Image_5.png", 15000),
  Pulsa(1,"Indosat Ooredoo", "assets/images/Image_5.png", 15000),
  Pulsa(1,"Indosat Ooredoo", "assets/images/Image_5.png", 15000),
  Pulsa(1,"Indosat Ooredoo", "assets/images/Image_5.png", 15000),
  Pulsa(1,"Indosat Ooredoo", "assets/images/Image_5.png", 15000),
  Pulsa(1,"Indosat Ooredoo", "assets/images/Image_5.png", 15000),
];