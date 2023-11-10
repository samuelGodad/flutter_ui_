import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onItemTapped,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: "Time",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: "Folder",
        ),
      ],
    );
  }
}
