import 'package:flutter/material.dart';
import 'package:nasa_space_app/models/astros_model.dart';
import 'package:nasa_space_app/views/pages/tour_page.dart';
import '../../controllers/astroCard_controller.dart';
import '../../models/astros_model.dart';
import '../../shared/widget/astro_card.dart';
import '../../controllers/astro_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  set astrosController(List<Astro> astroscontroller) {}

  @override
  Widget build(BuildContext context) {
    var astrosCardController = AstroCardController().getAstros();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Astronomy & Greek Mythology'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Planets of the Solar System',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'And their association with Greek Mythology',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TourPage()),
                  );
                },
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (MediaQuery.of(context).size.width > 600)
                        ? 3
                        : 2, // Responsive grid
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  padding: const EdgeInsets.all(20),
                  itemCount: astrosCardController.length,
                  itemBuilder: (context, index) {
                    return AstroCardComponent(
                        astro: astrosCardController[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
