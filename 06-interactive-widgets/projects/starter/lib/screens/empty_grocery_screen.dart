import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(30.0),
        // 2
        child: Center(
          // 3
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO 4: Add empty image
              // TODO 5: Add empty screen title
              // TODO 6: Add empty screen subtitle
              // TODO 7: Add browse recipes button
            ],
          ),
        ));
  }
}
