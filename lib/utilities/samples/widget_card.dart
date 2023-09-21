import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/consts/texts.dart';

class WidgetCard extends StatelessWidget {
  WidgetCard({Key? key, required this.title, required this.count})
      : super(key: key);

  String title;
  String count;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubTitleText(text: title),
              const SizedBox(
                height: 8,
              ),
              TitleText(text: count)
            ],
          ),
        ),
      ),
    );
  }
}
