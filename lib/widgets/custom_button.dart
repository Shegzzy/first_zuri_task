import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final onPressed;
  final Color color;
  final Color textColor;
  final double width;
  final Icon icon;

  const CustomButton({super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.white70,
    this.textColor = Colors.black,
    this.width = double.infinity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        gradient: const LinearGradient(
            begin: Alignment.center,
            colors: [Color(0xffffae88), Color(0xff8f93ea)]
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: const TextStyle(
                  color: Colors.white
              ),
              ),
              const SizedBox(width: 10,),
              icon,
            ],
          ),
        ),
      ),

    );
  }
}
