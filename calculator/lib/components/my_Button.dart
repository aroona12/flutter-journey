import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
final String button;
final Color color;
final VoidCallback onPress;
  const MyButton({super.key , required this.button , this.color = const Color(0xffC8C9C7), required this.onPress });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(child: Text(button,style:heading,)),
          ),
        ),
      ),
    );
  }
}