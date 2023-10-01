import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forextradingapp/utilities/consts/colors.dart';
import 'package:forextradingapp/utilities/enums/news_constants.dart';
import 'package:forextradingapp/utilities/consts/texts.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key, required this.newsModel}) : super(key: key);

  final NewsMList newsModel;

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
              Text(
                newsModel.title,
                style: GoogleFonts.dmSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(newsModel.imageUrl),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                newsModel.description,
                style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
