import 'package:flutter/material.dart';
import 'detailscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<dynamic, dynamic>> recipes = [
    {
      'Name': 'Steak',
      'Ingredients': [
        'Personal choice cut of Beef',
        'Cooking Oil', 
        'Butter', 
        'Salt and Pepper to taste', 
        'Rosemary', 
        'Thyme', 
        'Garlic',
      ],
      'Instructions': [
        'Pre-season beef with salt and pepper.', 
        'Heat a skillet on high with some oil in it.', 
        'Sear every side of the cut to get a nice color.', 
        'Bring heat to medium/medium-high and add butter, garlic, rosemary, and thyme.', 
        'Cook until desired rarity.'
      ]
    },
    {
      'Name': 'Pico de gallo',
      'Ingredients': [
        'Onions', 
        'Tomatoes', 
        'Jalapeño pepper', 
        'Cilantro', 
        'Limes', 
        'Garlic', 
        'Salt and Pepper',
        ],
      'Instructions': [
        'Chop vegetables.', 
        'Add lime juice.', 
        'Season.', 
        'Mix.'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe List"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['Name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}