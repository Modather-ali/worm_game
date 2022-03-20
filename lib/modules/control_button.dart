import 'package:flutter/material.dart';

class ControlButton extends StatefulWidget {
  final IconData iconData;
  void Function()? onTap;
  Color color;
  ControlButton(
      {Key? key,
      required this.iconData,
      required this.onTap,
      required this.color})
      : super(key: key);

  @override
  State<ControlButton> createState() => _ControlButtonState();
}

class _ControlButtonState extends State<ControlButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        height: 70,
        width: 70,
        child: Icon(
          widget.iconData,
          size: 35,
        ),
        decoration: BoxDecoration(
          color: isPressed ? Colors.red : Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
