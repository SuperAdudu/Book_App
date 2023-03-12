import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNum;
  const ChapterCard({
    super.key,
    required this.name,
    required this.tag,
    required this.chapterNum,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 30,
            color: Color(0xFFD3D3D3).withOpacity(0.85),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $chapterNum: $name \n",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
