import 'package:provider/provider.dart';
import '../models/models.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Image.asset('assets/fooderlich_assets/rw_logo.png')],
      ),
    );
  }
}
