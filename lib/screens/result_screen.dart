import 'dart:math';
import 'package:lovecalc/common/brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:lovecalc/common/brain.dart';
import 'package:lovecalc/common/button.dart';

import 'package:lovecalc/constant.dart';

class ResultScreen extends StatefulWidget {
  final String person1name;
  final String second2name;

  const ResultScreen({Key key, this.person1name, this.second2name})
      : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int lovepercentage = Random().nextInt(101);
  Brain brian = Brain();

  String lovemessage;
  void updateui(int lovepercentage) {
    setState(() {
      lovemessage=brian.getmessage(lovepercentage);
    });
  }

  @override
  void initState() {
    updateui(lovepercentage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              kGradientFirstColor,
              kGradientSecondColor,
              kGradientThirdColor
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  widget.person1name,
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                FontAwesomeIcons.heart,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  widget.second2name,
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Center(
                child: Text(
                  lovepercentage.toString() + "%",
                  style: kLovePercent,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  lovemessage,
                  style: kLoveMessage,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Button(
                buttonText: 'Calculate again',
                onPress: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
