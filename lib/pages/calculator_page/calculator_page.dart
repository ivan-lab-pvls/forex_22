import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/samples/TextFieldFA.dart';

import '../../utilities/consts/texts.dart';

class CalculatorPageView extends StatefulWidget {
  const CalculatorPageView({Key? key}) : super(key: key);

  @override
  State<CalculatorPageView> createState() => _CalculatorPageViewState();
}

class _CalculatorPageViewState extends State<CalculatorPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: firstColor,
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                child: PageText(text: "Calculator"),
              ),
              const SizedBox(
                height: 20,
              ),
              JustText(
                  text: 'Empower your '
                      'investment decisions with our Investment Calculator. '
                      'Easily calculate the potential returns on your investments by entering'
                      'the interest percentage, years of investing and the initial amount.'),
              const SizedBox(
                height: 50,
              ),
              JustText(text: 'Percentage of deal:'),
              const SizedBox(
                height: 5,
              ),
              const TextFieldFA(),
              const SizedBox(
                height: 20,
              ),
              JustText(text: 'Time of deal (month):'),
              const SizedBox(
                height: 5,
              ),
              const TextFieldFA(),
              const SizedBox(
                height: 20,
              ),
              JustText(text: 'Amount of investing:'),
              const SizedBox(
                height: 5,
              ),
              const TextFieldFA(),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: secondColor),
                child: CupertinoButton(
                  onPressed: () => debugPrint('s'),
                  child: JustText(text: 'Calculate'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
