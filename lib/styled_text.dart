import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text, required this.size});

  final String text;
  final double size;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color.fromARGB(255, 255, 255, 255),
        fontSize: size,
      ),
      textAlign: TextAlign.center,
    );
  }
}
