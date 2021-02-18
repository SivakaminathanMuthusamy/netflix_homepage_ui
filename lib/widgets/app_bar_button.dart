import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  AppBarButton({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(title),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
