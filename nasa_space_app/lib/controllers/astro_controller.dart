import 'package:nasa_space_app/models/astros_model.dart';

class AstroController {
  List<Astro> getAstros() {
    return [
      Astro(
          name: 'Mercury',
          myth: 'Hermes',
          diameter: 10,
          temperature: 10,
          distanceFromEarth: 10,
          gravity: 10),
      Astro(
          name: 'Venus',
          myth: 'Afrodite',
          diameter: 10,
          temperature: 10,
          distanceFromEarth: 10,
          gravity: 10),
      Astro(
          name: 'Marte',
          myth: 'Ares',
          diameter: 10,
          temperature: 10,
          distanceFromEarth: 10,
          gravity: 10),
      // ... Add other planets and their associated myths here
    ];
  }
}
