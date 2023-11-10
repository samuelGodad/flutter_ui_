import "../widgets/Buttons.dart";
import 'package:flutter/material.dart';
import "../widgets/CustomNavigationBar.dart";
import "../widgets/CustomFloatingActionBtn.dart";
import "../widgets/Cards.dart";

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    var availableScreenWidth = MediaQuery.of(context).size.width - 50;
    int selectedIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            alignment: Alignment.bottomCenter,
            height: 150,
            decoration: BoxDecoration(color: Colors.blue.shade800),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'The guardean ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'the team folder',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // buildRowIcons()
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Storage',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    children: [
                      TextSpan(
                        text: " /9GB",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Upgrade',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4,
                      width: availableScreenWidth * 0.25,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Source',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4,
                      width: availableScreenWidth * 0.23,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Docs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4,
                      width: availableScreenWidth * 0.23,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Images',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4,
                      width: availableScreenWidth * 0.26,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                const Text(
                  'Recently Updated',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 20,
                ),
                Row(
                  children: [
                    Cards(
                        availableScreenWidth: availableScreenWidth,
                        image: "sketch.png",
                        texts: const ["Desktop ", "sketch"]),
                    Cards(
                        availableScreenWidth: availableScreenWidth,
                        image: "sketch.png",
                        texts: const ["Mobile  ", "sketch"]),
                    Cards(
                        availableScreenWidth: availableScreenWidth,
                        image: "prd.png",
                        texts: const ["Interaction ", "sketch"]),
                  ],
                ),
                const Divider(
                  height: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Projects",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Create new",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Buttons(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {},
      ),
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
}
