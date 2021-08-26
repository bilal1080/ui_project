import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Color color;
  final VoidCallback onTap;
  final String? Function(String?) validator;
  TextInputField(
      {Key? key,
      required this.label,
      required this.keyboardType,
      this.color = Colors.black,
      required this.onTap,
      required this.controller,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      textInputAction: TextInputAction.next, 
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
          errorStyle: TextStyle(color: Colors.red, fontSize: 15.0),
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
    );
  }
}
