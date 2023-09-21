import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/consts/news_constants.dart';

import '../../../utilities/consts/texts.dart';

class CommunityDetailPage extends StatelessWidget {
  const CommunityDetailPage({Key? key, required this.communityModel})
      : super(key: key);

  final NewsMList communityModel;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(14),
          color: firstColor,
          child: ListView(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Stack(
                      children: [
                        CupertinoButton(
                          alignment: Alignment.topLeft,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            CupertinoIcons.arrow_left,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TitleText(text: communityModel.title),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(communityModel.imageUrl),
              ),
              const SizedBox(
                height: 20,
              ),
              NewsText(text: communityModel.description)
            ],
          ),
        ),
      ),
    );
  }
}
