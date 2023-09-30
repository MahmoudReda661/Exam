// import 'package:flutter/material.dart';
//
// class OnDemandCarouselDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('On-demand carousel demo')),
//       body: Container(
//           child: CarouselSlider.builder(
//             itemCount: 100,
//             options: CarouselOptions(
//               aspectRatio: 2.0,
//               enlargeCenterPage: true,
//               autoPlay: true,
//             ),
//             itemBuilder: (ctx, index, realIdx) {
//               return Container(
//                 child: Text(index.toString()),
//               );
//             },
//           )),
//     );
//   }
// }
//
// class CarouselWithIndicatorDemo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _CarouselWithIndicatorState();
//   }
// }
//
// class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
//   int _current = 0;
//   final CarouselController _controller = CarouselController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Carousel with indicator controller demo')),
//       body: Column(children: [
//         Expanded(
//           child: CarouselSlider(
//             items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => _controller.animateToPage(entry.key),
//               child: Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (Theme.of(context).brightness == Brightness.dark
//                         ? Colors.white
//                         : Colors.black)
//                         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//               ),
//             );
//           }).toList(),
//         ),
//       ]),
//     );
//   }
// }
