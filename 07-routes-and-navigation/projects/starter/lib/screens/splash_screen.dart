import 'package:provider/provider.dart';
import '../models/models.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<AppStateManager>(context, listen: false).initializeApp();
    return Center(
      child: Column(
        children: [Image.asset('assets/fooderlich_assets/rw_logo.png')],
      ),
    );
  }

  static MaterialPage page() {
    return const MaterialPage(
      name: 'Splash',
      key: ValueKey('/Splash'),
      child: SplashScreen(),
    );
  }
}
