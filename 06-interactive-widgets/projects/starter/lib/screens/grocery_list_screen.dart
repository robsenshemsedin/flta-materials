import 'package:flutter/material.dart';
import '../components/grocery_tile.dart';
import '../models/models.dart';
import 'grocery_item_screen.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;
  const GroceryListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;
// 2
    return Padding(
      padding: const EdgeInsets.all(16.0),
      // 3
      child: ListView.separated(
        // 4
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          // TODO 28: Wrap in a Dismissable
          // TODO 27: Wrap in an InkWell
          // 5
          return InkWell(
            child: GroceryTile(
              key: Key(item.id),
              item: item,
              // 6
              onComplete: (change) {
                // 7
                if (change != null) {
                  manager.completeItem(index, change);
                }
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroceryItemScreen(
                    originalItem: item,
                    // 3
                    onUpdate: (item) {
                      // 4
                      manager.updateItem(item, index);
                      // 5
                      Navigator.pop(context);
                    },
                    // 6
                    onCreate: (item) {},
                  ),
                ),
              );
            },
          );
        },
        // 8
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16.0);
        },
      ),
    );
  }
}
