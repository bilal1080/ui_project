import 'package:flutter/material.dart';

class InputElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;
  final Image image;
  const InputElevatedButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.onPressed,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      
      onPressed: onPressed, 
      icon: image, 
      label: Text(text,
      style: TextStyle(
            fontWeight: FontWeight.w900, fontSize: 16, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: Size(40, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0), // <-- Radius
    ),
  ),
      
      );
  }
}
