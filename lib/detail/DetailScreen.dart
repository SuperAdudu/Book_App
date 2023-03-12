import 'package:ebook_app/constant.dart';
import 'package:ebook_app/detail/components/BookInfo.dart';
import 'package:ebook_app/detail/components/ChapterList.dart';
import 'package:ebook_app/detail/components/Recommend.dart';
import 'package:ebook_app/home/components/ButtonRead.dart';
import 'package:ebook_app/home/components/Rating.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.08),
                        BookInfo(size: size),
                      ],
                    ),
                  ),
                ),
                ListChapter(size: size),
              ],
            ),
            Recommend(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
