import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/news_constants.dart';
import 'package:forextradingapp/utilities/consts/texts.dart';

class NewsCard extends StatelessWidget {
  NewsCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child:  ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(
                  children: [
                    Image.network(NewsList.stats[index].imageUrl),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TitleText(text: NewsList.stats[index].title),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 38,
              child: SubTitleText(text: NewsList.stats[index].description),
            )
          ],
        ),
     
    );
  }
}
