import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:in_app_review/in_app_review.dart';
import '../../utilities/consts/colors.dart';
import '../../utilities/consts/texts.dart';
import '../../utilities/samples/settings_button.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: firstColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                child: PageText(text: "Settings"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(
                  0xFF1F2257,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SettingsButton(
                firstText: 'Rate App',
                secondText: 'Your opinion is important to us',
                onTap: () {
                  // inAppReview.openStoreListing(appStoreId: '6467123708');
                },
              ),
              SettingsButton(
                firstText: 'Privacy Policy',
                secondText: 'Conditions of use of your data',
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => UiViewSettings(
                        url:
                            'https://docs.google.com/document/d/1ECkr13MXcSZRzh5HLCodJXK4IQ77yfGR8xcjXKNlfaw/edit?usp=sharing',
                        name: 'Privacy Policy',
                      ),
                    ),
                  );
                },
              ),
              SettingsButton(
                firstText: 'Terms & Conditions',
                secondText: 'Regulations and rules of service',
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => UiViewSettings(
                        url:
                            'https://docs.google.com/document/d/1ECkr13MXcSZRzh5HLCodJXK4IQ77yfGR8xcjXKNlfaw/edit?usp=sharing',
                        name: 'Privacy Policy',
                      ),
                    ),
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TitleText(text: 'Show more assets'),
                  ),
                  CupertinoSwitch(
                    activeColor: uiColor,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(
                        () {
                          isSwitched = value;
                        },
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UiViewSettings extends StatelessWidget {
  late String url;
  late String name;
  // ignore: use_key_in_widget_constructors
  UiViewSettings({required this.url, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 24, 97),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(url),
        ),
      ),
    );
  }
}
