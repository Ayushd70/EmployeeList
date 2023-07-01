import 'package:employee_list/configs/resources.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: AppTextStyles.mediumRoboto18,
          ),
        ),
        body: const Placeholder());
  }
}
