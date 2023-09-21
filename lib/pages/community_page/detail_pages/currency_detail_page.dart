import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/consts/texts.dart';

import '../../../utilities/enums/forex_pairs_enum.dart';
import '../../../utilities/samples/currency_card.dart';

class CurrencyDetailPage extends StatelessWidget {
  const CurrencyDetailPage({Key? key, required this.forexPair})
      : super(key: key);
  final Pairs forexPair;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
          decoration: const BoxDecoration(color: firstColor),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Stack(
                        children: [
                          CupertinoButton(
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              CupertinoIcons.arrow_left,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: TitleText(text: forexPair.name)),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: InAppWebView(
                  initialData: InAppWebViewInitialData(
                      data: """<!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container">
  <div id="tradingview_a4086"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">more information</span></a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "autosize": true,
  "symbol": "FX:${forexPair.name}",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "dark",
  "style": "1",
  "locale": "en",
  "enable_publishing": false,
  "allow_symbol_change": true,
  "container_id": "tradingview_a4086"
}
  );
  </script>
</div>
<!-- TradingView Widget END -->"""),
                ),
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CurrencyCard(index: index);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
