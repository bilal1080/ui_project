import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';

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
      height: 50.0,
      color: color,
      onPressed: onPressed,
      
      child: InputText(text: text, color: Colors.white, weight: FontWeight.w900, size: 16.0, alignment: TextAlign.center,),

      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
