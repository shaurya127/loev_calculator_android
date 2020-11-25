import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lovecalc/constant.dart';
import 'package:lovecalc/common/button.dart';
import 'package:lovecalc/screens/result_screen.dart';

class Mainscreen extends StatefulWidget {
  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  TextEditingController person1controler = TextEditingController();

  TextEditingController person2controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            kGradientFirstColor,
            kGradientSecondColor,
            kGradientThirdColor
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'Person 1',
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(40.0)),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: TextField(
                  controller: person1controler,
                  style: kTextFieldInputStyle,
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.male,
                        color: kIconTextFieldColor, size: 30.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'loves',
                style: kLoves,
              )),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Person 2',
                  style: kPersonTextStyle,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(40.0)),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                child: TextField(
                  controller: person2controler,
                  style: kTextFieldInputStyle,
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.female,
                        color: kIconTextFieldColor, size: 30.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Button(
                
                buttonText: 'Calculate',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ResultScreen(
                        person1name: person1controler.text,
                        second2name:person2controler.text,
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
