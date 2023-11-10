import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.availableScreenWidth,
    required this.image,
    required this.texts,
  });

  final double availableScreenWidth;
  final String image;
  final List<String>? texts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: availableScreenWidth * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade300,
          ),
          height: 110,
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.only(right: 10),
          child: Image.asset('assets/images/$image'),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
            text: texts?[0],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: texts?[1],
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
