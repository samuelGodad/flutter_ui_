import "package:flutter/material.dart";

class ShareIcon extends StatelessWidget {
  const ShareIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.4),
            borderRadius: BorderRadius.circular(30),
          ),
          child: buildIconButtonSearch(),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.4),
            borderRadius: BorderRadius.circular(15),
          ),
          child: buildIconButtonShare(),
        ),
      ],
    );
  }

  IconButton buildIconButtonShare() {
    return IconButton(
      icon: const Icon(
        Icons.share_outlined,
        color: Colors.white,
        size: 25,
      ),
      onPressed: () {},
    );
  }

  IconButton buildIconButtonSearch() {
    return IconButton(
      icon: const Icon(
        Icons.search,
        color: Colors.white,
        size: 25,
      ),
      onPressed: () {},
    );
  }

  IconButton buildIconButtonNotfication() {
    return IconButton(
      icon: const Icon(
        Icons.notification_add_outlined,
        color: Colors.white,
        size: 25,
      ),
      onPressed: () {},
    );
  }
}
