/// ************************************
///      INHERITED WIDGET USECASE
/// ************************************/

import 'package:flutter/material.dart';
import 'package:recipe_grocery/network/recipe_model.dart';

class RecipeWidget extends InheritedWidget {
  final APIRecipeQuery recipe;
  const RecipeWidget({Key? key, required this.recipe, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(RecipeWidget oldWidget) => recipe != oldWidget.recipe;

  static RecipeWidget of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<RecipeWidget>()!;
}

// RecipeWidget recipeWidget = RecipeWidget.of(context); 
// print(recipeWidget.recipe.label);
