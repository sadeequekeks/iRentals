// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// final List<String> imgList = [
//   'https://www.mhwilliams.com/wp-content/uploads/2020/01/11.jpeg',
//   'https://i0.wp.com/innovation-village.com/wp-content/uploads/2022/01/MoMo-Advance.png?fit=2397%2C1459&ssl=1',
//   'https://s3b.cashify.in/gpro/uploads/2021/12/11143333/All-Airtel-Data-Recharge-Plans-List.jpg',
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-d_GSRKTf5ahVLUWHPGzxoYr-U2FnBud6vrpZg0eTzktqt0zs4NttCC19oBsZAqkcJgs&usqp=CAU',
//   'https://i0.wp.com/innovation-village.com/wp-content/uploads/2022/01/MoMo-Advance.png?fit=2397%2C1459&ssl=1',
//   'https://s3b.cashify.in/gpro/uploads/2021/12/11143333/All-Airtel-Data-Recharge-Plans-List.jpg'
// ];

// class VerticalSliderDemo extends StatelessWidget {
//   VerticalSliderDemo({super.key});

//   final List<Widget> imageSliders = imgList
//       .map((item) => SizedBox(
//             child: Container(
//               margin: const EdgeInsets.all(5.0),
//               child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//                   child: Stack(
//                     children: <Widget>[
//                       Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                       Positioned(
//                         bottom: 0.0,
//                         left: 0.0,
//                         right: 0.0,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 Color.fromARGB(200, 0, 0, 0),
//                                 Color.fromARGB(0, 0, 0, 0)
//                               ],
//                               begin: Alignment.bottomCenter,
//                               end: Alignment.topCenter,
//                             ),
//                           ),
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 20.0),
//                           child: Text(
//                             'No. ${imgList.indexOf(item)} image',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//             ),
//           ))
//       .toList();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Vertical sliding carousel demo')),
//       body: SizedBox(
//           child: CarouselSlider(
//         options: CarouselOptions(
//           aspectRatio: 2.0,
//           enlargeCenterPage: true,
//           scrollDirection: Axis.vertical,
//           autoPlay: true,
//         ),
//         items: imageSliders,
//       )),
//     );
//   }
// }
