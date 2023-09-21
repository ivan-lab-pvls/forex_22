import 'package:flutter/cupertino.dart';
import 'package:forextradingapp/utilities/consts/news_constants.dart';
import 'package:forextradingapp/utilities/samples/icon_star.dart';

import '../../pages/community_page/detail_pages/community_detail_page.dart';
import '../consts/texts.dart';

// ignore: must_be_immutable
class CommunityCard extends StatelessWidget {
  CommunityCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  int index;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325,
      child: CupertinoButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => CommunityDetailPage(
                  communityModel: NewsList.stats[index]),
            ),
          );
        },
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Stack(
                  children: [
                    Image.network(NewsList.stats[index].imageUrl),
                    const Align(
                      alignment: Alignment.topRight,
                      child: IconStar(),
                    )
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
              child: SubTitleText(
                  text: NewsList.stats[index].description),
            )
          ],
        ),
      ),
    );
  }
}
