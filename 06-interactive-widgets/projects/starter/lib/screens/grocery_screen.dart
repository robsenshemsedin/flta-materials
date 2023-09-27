import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import 'empty_grocery_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<GroceryManager>(builder: ((context, groceryManager, child) {
      if (!groceryManager.groceryItems.isNotEmpty) {
        return Container(
          color: Colors.amberAccent,
        );
      } else {
        return const EmptyGroceryScreen();
      }
    }));
  }
  // TODO: Add buildGroceryScreen
}
