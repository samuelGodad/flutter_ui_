import 'package:flutter/material.dart';
import "../widgets/Buttons.dart";
import "../widgets//CustomFloatingActionBtn.dart";
import "../widgets//CustomNavigationBar.dart";
import "../widgets/header.dart";

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Buttons buttons = const Buttons();
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Column(
        children: [
          const Header(),
          Container(
            padding: const EdgeInsets.only(right: 8, left: 25, top: 25),
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildAvater("Adam", "adam"),
                buildAvater("Alie", "alie"),
                buildAvater("Brandon", "brandon"),
                buildAvater("Jess", "jess"),
                buildAvater("Mia", "mia"),
                buildAvater("Mike", "mike"),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Files',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Create news',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 49,
                  color: Colors.red,
                ),
                buttons.buttonContainer(showAlert: true, fileName: "Assets"),
                buttons.buttonContainer(fileName: "Brand"),
                buttons.buttonContainer(fileName: "Design"),
                buttons.buttonContainer(fileName: "Moodebreads"),
                buttons.buttonContainer(fileName: "Wireframes"),
                buttons.buttonContainer(fileName: ''),
                buttons.buttonContainer(fileName: ''),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }

  Padding buildAvater(String name, String fileName) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: Image.asset('assets/images/$fileName.jpeg').image,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
