import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final imageList = [
  "assets/images/0.jpg",
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/6.jpg",
  "assets/images/7.jpg",
  "assets/images/8.jpg",
  "assets/images/9.jpg",
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const Text("Movies"),
            ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ImageListWidget(
                      imageindex: index,
                    ),
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: 10),
          ],
        ),
      ),
    );
  }
}

class ImageListWidget extends StatelessWidget {
  const ImageListWidget({
    required this.imageindex,
    super.key,
  });
  final imageindex;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(
              "assets/images/$imageindex.jpg",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
