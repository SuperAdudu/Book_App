import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double rate;
  const Rating({
    super.key,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      right: 10,
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          StarRate(starRate: rate),
        ],
      ),
    );
  }
}

class StarRate extends StatelessWidget {
  const StarRate({
    super.key,
    required this.starRate,
  });

  final double starRate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 5),
            blurRadius: 20,
            color: const Color(0xFFD3D3D3).withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            size: 15,
            color: kIconColor,
          ),
          SizedBox(height: 5),
          Text(
            "$starRate",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
