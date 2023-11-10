import 'package:flutter/material.dart';
import 'package:flutter_netninja/pages/team.dart';

// import './pages/team.dart';
void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Team(),
      ),
    );

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("HERE WE GO FOR FLUTTER"),
//         centerTitle: true,
//         backgroundColor: Color(0xffe6817e),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "Hello Flutter, we are going to",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'IndieFlower',
//                 color: Colors.grey[600],
//               ),
//             ),
//             Image.network(
//               'https://images.unsplash.com/photo-1501862700950-18382cd41497?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNwYWNlfGVufDB8fDB8fHww', // Replace with the actual path to your image file
//               width: 200, // Set the width of the image
//             ),
//             Icon(
//               Icons.rocket_launch,
//               color: Colors.blueAccent,
//               size: 40,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                   fixedSize: const Size(80, 50),
//                   backgroundColor: Colors.amber,
//                   foregroundColor: Colors.red),
//               child: const Text('data'),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
