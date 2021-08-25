import 'package:flutter/material.dart';

class InputMaterialButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;

  const InputMaterialButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      //padding: EdgeInsets.all(15.0),
      minWidth: double.minPositive,
      height: 50,
      color: color,
      onPressed: () {},
      
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w900, fontSize: 16, color: Colors.white),
      ),

      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
