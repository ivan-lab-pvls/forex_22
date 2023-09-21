import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/pages/community_page/community_page_view.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/consts/texts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'community_list.dart';

final List<String> _watchedVideos = [];

class CommunityListPage extends StatefulWidget {
  const CommunityListPage({Key? key}) : super(key: key);

  @override
  State<CommunityListPage> createState() => _CommunityListPageState();
}

class _CommunityListPageState extends State<CommunityListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Align(
                  child: PageText(text: "Read our community"),
                ),
                SizedBox(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 5),
                          const SizedBox(height: 20),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Stack(
                              children: [
                                CupertinoButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    if (!_watchedVideos.contains(
                                        CommunityList.stats[index].title)) {
                                      setState(() {
                                        _watchedVideos.add(
                                            CommunityList.stats[index].title);
                                      });
                                    }
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CommunityDetailsPage(
                                          community: CommunityList.stats[index],
                                        ),
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
                                                CommunityList
                                                    .stats[index].imageUrl,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    132, 19, 51, 194),
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    CommunityList
                                                        .stats[index].author,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.dmSans(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        CommunityList.stats[index].title,
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
                                        CommunityList.stats[index].description,
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
                            itemCount: CommunityList.stats.length,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
