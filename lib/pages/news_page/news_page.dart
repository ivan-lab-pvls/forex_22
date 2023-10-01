import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/pages/news_page/news_detail_page.dart';
import 'package:forextradingapp/utilities/enums/news_constants.dart';
import 'package:forextradingapp/utilities/samples/news_card.dart';
import 'package:forextradingapp/utilities/samples/widget_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../utilities/consts/colors.dart';
import '../../utilities/consts/texts.dart';
import '../community_page/community_page_view.dart';

class NewsPageView extends StatefulWidget {
  const NewsPageView({Key? key}) : super(key: key);

  @override
  State<NewsPageView> createState() => _NewsPageViewState();
}

final List<String> _watched = [];

 DateTime now = DateTime.now();
  
  // Define the desired format
  DateFormat dateFormat = DateFormat('MMMd');
  
  String formattedDate = dateFormat.format(now);


class _NewsPageViewState extends State<NewsPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: firstColor,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                child: PageText(text: "Read our news"),
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
                shrinkWrap: true,
                itemBuilder: (context, index) => Stack(
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                NewsDetailPage(newsModel: NewsList.stats[index]),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: Container(
                                  height: 175,
                                  width: double.infinity,
                                  color: Colors.grey,
                                  child: Image.network(
                                    NewsList
                                        .stats[index].imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            NewsList.stats[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.dmSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            NewsList.stats[index].description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (context, index) =>
                const SizedBox(height: 20),
                itemCount: NewsList.stats.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
