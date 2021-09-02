import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight weight;
  final double size;
  final TextAlign alignment;
  const InputText({
    Key? key,
    required this.text,
    required this.color,
    required this.weight,
    required this.size,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
