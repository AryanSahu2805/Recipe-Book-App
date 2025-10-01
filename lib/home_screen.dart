import 'package:flutter/material.dart';
import 'details_screen.dart';

class Recipe {
  final String name;
  final List<String> ingredients;
  final String instructions;

  Recipe({
    required this.name,
    required this.ingredients,
    required this.instructions,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = [
      Recipe(
        name: 'Spaghetti Carbonara',
        ingredients: [
          '400g spaghetti',
          '200g pancetta',
          '4 large eggs',
          '100g Parmesan cheese',
          'Black pepper',
          'Salt'
        ],
        instructions:
            '1. Cook spaghetti according to package instructions.\n2. Fry pancetta until crispy.\n3. Beat eggs with Parmesan cheese.\n4. Mix hot pasta with pancetta.\n5. Remove from heat and stir in egg mixture.\n6. Season with black pepper and salt.',
      ),
      Recipe(
        name: 'Chicken Stir Fry',
        ingredients: [
          '500g chicken breast',
          '2 bell peppers',
          '1 onion',
          '3 cloves garlic',
          'Soy sauce',
          'Vegetable oil',
          'Rice'
        ],
        instructions:
            '1. Cut chicken into bite-sized pieces.\n2. Heat oil in a wok.\n3. Cook chicken until golden.\n4. Add vegetables and garlic.\n5. Stir fry for 5 minutes.\n6. Add soy sauce.\n7. Serve with rice.',
      ),
      Recipe(
        name: 'Chocolate Chip Cookies',
        ingredients: [
          '2 cups flour',
          '1 cup butter',
          '1 cup sugar',
          '2 eggs',
          '2 cups chocolate chips',
          '1 tsp vanilla extract',
          '1 tsp baking soda'
        ],
        instructions:
            '1. Preheat oven to 375°F.\n2. Mix butter and sugar.\n3. Add eggs and vanilla.\n4. Combine flour and baking soda.\n5. Fold in chocolate chips.\n6. Drop spoonfuls on baking sheet.\n7. Bake for 10-12 minutes.',
      ),
      Recipe(
        name: 'Caesar Salad',
        ingredients: [
          'Romaine lettuce',
          'Croutons',
          'Parmesan cheese',
          'Caesar dressing',
          'Chicken breast (optional)',
          'Lemon juice'
        ],
        instructions:
            '1. Wash and chop romaine lettuce.\n2. Grill chicken if using.\n3. Toss lettuce with Caesar dressing.\n4. Add croutons and Parmesan.\n5. Top with grilled chicken.\n6. Drizzle with lemon juice.',
      ),
      Recipe(
        name: 'Vegetable Soup',
        ingredients: [
          '4 carrots',
          '3 celery stalks',
          '2 onions',
          '4 cups vegetable broth',
          '2 potatoes',
          'Salt and pepper',
          'Herbs'
        ],
        instructions:
            '1. Chop all vegetables.\n2. Sauté onions until soft.\n3. Add carrots and celery.\n4. Pour in vegetable broth.\n5. Add potatoes and herbs.\n6. Simmer for 30 minutes.\n7. Season with salt and pepper.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index].name),
            trailing: const Icon(Icons.arrow_forward_ios),
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