import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<dynamic, dynamic> recipe;

  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['Name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
            for (String ingredients in recipe['Ingredients'])
              Text('• $ingredients'),
            Text('Instructions:', style: TextStyle(fontWeight: FontWeight.bold)),
            // Displaying instructions as a list
            for (String instruction in recipe['Instructions'])
              Text('• $instruction'),
          ],
        ),
      ),
    );
  }
}