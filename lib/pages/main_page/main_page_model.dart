import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/pages/community_page/detail_pages/community.dart';
import '../../utilities/consts/colors.dart';
import '../analysis_page/analysis_page.dart';
import '../news_page/news_page.dart';
import '../settings_page/setting_page_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> tabs = const [
    CommunityListPage(),
    AnalysisPageView(),
    SettingsPageView()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: firstColor,
      tabBar: CupertinoTabBar(
        backgroundColor: secondColor,
        activeColor: activeColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Community"),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph), label: "Analysis"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
      tabBuilder: (context, index) {
        return tabs[index];
      },
    );
  }
}
