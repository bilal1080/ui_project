import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  final double height;
  const Height({Key? key, required this.height}) : super(key: key);

  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
    );
  }
}
