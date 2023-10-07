import 'package:flutter/material.dart';

import '../../models/astrosCard_model.dart';
import '../../models/astros_model.dart';

// class AstroCard extends StatelessWidget {
//   final Astro astro;

//   const AstroCard({required this.astro});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             astro.name,
//             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 10),
//           const Text(
//             'teste',
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }

class AstroCardComponent extends StatefulWidget {
  final AstroCard astro;

  AstroCardComponent({required this.astro});

  @override
  _AstroCardComponentState createState() => _AstroCardComponentState();
}

class _AstroCardComponentState extends State<AstroCardComponent> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: isHovered ? Colors.greenAccent : null,
      shadowColor: isHovered ? Colors.greenAccent : null,
      elevation: isHovered ? 8.0 : 4.0, // Apply elevation on hover
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Apply BorderRadius
      ),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/${widget.astro.imagePath}', // Replace with the path to your image
                // width: 100, // Customize width as needed
                // height: 100,
                fit: BoxFit.cover, // Customize height as needed
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.astro.name,
              style: TextStyle(
                  color: isHovered ? Colors.greenAccent : null,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              widget.astro.myth,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                color: isHovered ? Colors.greenAccent : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
