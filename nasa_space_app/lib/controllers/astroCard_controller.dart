import 'package:nasa_space_app/models/astrosCard_model.dart';

class AstroCardController {
  List<AstroCard> getAstros() {
    return [
      AstroCard(name: 'Mercury', myth: 'Hermes', imagePath: ''),
      AstroCard(name: 'Venus', myth: 'Afrodite', imagePath: ''),
      AstroCard(name: 'Mars', myth: 'Ares', imagePath: ''),
      AstroCard(
          name: 'Netuno',
          myth: 'Poseidon',
          imagePath: 'images/cards/netuno.jpeg'),
      AstroCard(
          name: 'Saturn',
          myth: 'Greek Cronus',
          imagePath: 'images/cards/saturno.jpeg'),
      // ... Add other planets and their associated myths here
    ];
  }
}
