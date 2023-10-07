import 'package:flutter/material.dart';

import '../../models/astros_model.dart';

class TourPage extends StatefulWidget {
  const TourPage();

  @override
  State<TourPage> createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tour Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Details about ', // Display details about the selected item
              style: TextStyle(fontSize: 24),
            ),
            // Add more widgets to display details here
          ],
        ),
      ),
    );
  }
}
