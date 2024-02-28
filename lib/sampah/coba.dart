// import 'package:flutter/material.dart';

// import '../../data/babysitter.dart';

// class ProductListScreen extends StatelessWidget {
//   ProductListScreen({Key? key}) : super(key: key);
//   static const nameRoute = '/ProductListScreen';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Product List'),
//       ),
//       body: ListView.builder(
//         itemCount: productList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Image.network(
//                     productList[index].image,
//                     width: 80,
//                     height: 80,
//                   ),
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         productList[index].name,
//                         style: const TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(productList[index].description),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
