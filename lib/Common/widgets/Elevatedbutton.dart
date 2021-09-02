import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';

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
      label: InputText(text: text, color: Colors.white, weight: FontWeight.w900, size: 16.0, alignment: TextAlign.center,),
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
