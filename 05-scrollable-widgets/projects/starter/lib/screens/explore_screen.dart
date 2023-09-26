import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  // 1
  final mockService = MockFooderlichService();
  ExploreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 2

    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          final recipies = snapshot.data?.todayRecipes ?? [];
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return ListView(
                scrollDirection: Axis.vertical,
                children: [
                  TodayRecipeListView(
                    recipes: recipies,
                  ),
                  Container(
                    color: Colors.green,
                    height: 500,
                  )
                ],
              );
            } else {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
