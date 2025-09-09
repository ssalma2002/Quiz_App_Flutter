import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.onTap, {super.key});
  final String text;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        shape: ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      child: Text(text,textAlign: TextAlign.center,),
    );
  }
}
