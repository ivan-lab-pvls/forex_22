import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/pages/community_page/detail_pages/news_detail_page.dart';
import 'package:forextradingapp/utilities/consts/news_constants.dart';
import 'package:forextradingapp/utilities/samples/news_card.dart';
import 'package:forextradingapp/utilities/samples/widget_card.dart';
import 'package:intl/intl.dart';
import '../../utilities/consts/colors.dart';
import '../../utilities/consts/texts.dart';

class NewsPageView extends StatefulWidget {
  const NewsPageView({Key? key}) : super(key: key);

  @override
  State<NewsPageView> createState() => _NewsPageViewState();
}

final List<String> _watched = [];

 DateTime now = DateTime.now();
  
  // Define the desired format
  DateFormat dateFormat = DateFormat('dd.MM.yyyy');
  
  String formattedDate = dateFormat.format(now);


class _NewsPageViewState extends State<NewsPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        backgroundColor: firstColor,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
            color: firstColor,
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Align(
                  child: PageText(text: "News"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    WidgetCard(
                      title: 'Total',
                      count: '${NewsList.stats.length}',
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    WidgetCard(
                      title: 'Viewed',
                      count: '${_watched.length}',
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    WidgetCard(
                      title: 'Date',
                      count: '$formattedDate',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Color(
                    0xFF1F2257,
                  ),
                ),
                const SizedBox(height: 20),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: NewsList.stats.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (!_watched.contains(NewsList.stats[index].title)) {
                          setState(() {
                            _watched.add(NewsList.stats[index].title);
                          });
                        }
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => NewsDetailPage(
                                newsModel: NewsList.stats[index]),
                          ),
                        );
                      },
                      child: NewsCard(index: index),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 20);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
