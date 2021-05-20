import 'package:flutter/material.dart';

import '../Models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no fauvorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
            id: favoriteMeals[i].id,
            title: favoriteMeals[i].title,
            imageUrl: favoriteMeals[i].imageUrl,
            affordability: favoriteMeals[i].affordability,
            complexity: favoriteMeals[i].complexity,
            duration: favoriteMeals[i].duration,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
