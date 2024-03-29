import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.color, required this.child, this.onPress});

  final Color color;
  final Widget child;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
