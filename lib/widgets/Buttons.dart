import "package:flutter/material.dart";
import "../pages/page.dart";

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Pages()),
        );
      },
      child: buttonContainer(showAlert: false, fileName: 'Chatbox'),
    );
  }

  Container buttonContainer({bool showAlert = false, String fileName = ''}) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  const Icon(
                    Icons.folder,
                    color: Colors.blue,
                  ),
                  if (showAlert)
                    Positioned(
                      right: 0,
                      top: 2,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 3.5,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                fileName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.more_vert_rounded,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
