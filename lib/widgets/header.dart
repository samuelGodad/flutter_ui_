import 'package:flutter/material.dart';
import '../widgets/icons/ShareIcon.dart';

class Header extends StatelessWidget {
  const Header({Key? key});

  @override
  Widget build(BuildContext context) {
    const ShareIcon share = ShareIcon();
    return buildContainerHeader(share);
  }

  Container buildContainerHeader(ShareIcon share) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      alignment: Alignment.bottomCenter,
      height: 150,
      decoration: const BoxDecoration(color: Color(0xffb9b5b5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Chatbox',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'project',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
          buildRow(share.buildIconButtonSearch(), share.buildIconButtonShare()),
        ],
      ),
    );
  }

  Row buildRow(Widget btn1, Widget btn2) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.04),
            borderRadius: BorderRadius.circular(30),
          ),
          child: btn1,
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(40),
          ),
          child: btn2,
        ),
      ],
    );
  }
}
