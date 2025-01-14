import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30.0),
        // 2
        child: Center(
          // 3
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image(
                    image:
                        AssetImage('assets/fooderlich_assets/empty_list.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Text(
                'No Groceries',
                style: TextStyle(fontSize: 21.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Shopping for ingredients?\n'
                'Tap the + button to write them down!',
                textAlign: TextAlign.center,
              ),
              MaterialButton(
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.green,
                onPressed: () {
                  Provider.of<TabManager>(
                    context,
                    listen: false,
                  ).goToRecipes();
                },
                child: const Text('Browse Recipes'),
              ),
            ],
          ),
        ));
  }
}
