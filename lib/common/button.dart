import 'package:flutter/material.dart';
import 'package:lovecalc/constant.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Function onPress;
  const Button({Key key, this.buttonText,this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 72),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [kBottomButtonFirstColor, kBottomButtonSecondColor]),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Center(child: Text(buttonText,style: kButtonText,)),
      ),
    );
  }
}
