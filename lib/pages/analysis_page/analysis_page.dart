
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/samples/currency_card.dart';

import '../../utilities/consts/colors.dart';
import '../../utilities/consts/texts.dart';

class AnalysisPageView extends StatefulWidget {
  const AnalysisPageView({Key? key}) : super(key: key);

  @override
  State<AnalysisPageView> createState() => _AnalysisPageViewState();
}

class _AnalysisPageViewState extends State<AnalysisPageView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
          color: firstColor,
          child: ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Align(
                  child: PageText(text: "Analysis"),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return  CurrencyCard(index: index);
                  },
                )
              ]),
        ),
      ),
    );
  }
}
