import 'package:ebook_app/detail/components/ChapterCard.dart';
import 'package:flutter/material.dart';

class ListChapter extends StatelessWidget {
  const ListChapter({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.4 - 30),
      child: Column(
        children: [
          ChapterCard(
            name: "Money",
            chapterNum: 1,
            tag: "Life is about change",
          ),
          ChapterCard(
            name: "Fower",
            chapterNum: 2,
            tag: "Everything loves power",
          ),
          ChapterCard(
            name: "Influence",
            chapterNum: 3,
            tag: "Influence easily like never before",
          ),
          ChapterCard(
            name: "Win",
            chapterNum: 4,
            tag: "Winning is what matters",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
