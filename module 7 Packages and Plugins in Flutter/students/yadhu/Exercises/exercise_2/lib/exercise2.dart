import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise2> {
  final CarouselController carousel_1 = CarouselController();
  final CarouselController carousel_2 = CarouselController();

  bool auto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Image Carousel"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            child: CarouselSlider(
              items: [
                Image.network("https://i.ytimg.com/vi/CitzJWXkrQU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBiRp03j-g7NNxEiLtkwz-VwR10cA",
                fit: BoxFit.fill),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqDS03drZGoz-auE9OZA4Brgv5sAfV9Bybxg&s",
                fit: BoxFit.fill),
                Image.network("https://ducatism.com/cdn/shop/files/312717018_819741305945015_4617423412407213270_n.jpg?v=1747551228&width=1946",
                fit: BoxFit.fill),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc74ZcnOqBPNb3-1zlQ5sVAGyRtKCfx_2cAA&s",
                fit: BoxFit.fill),
                Image.network("https://www.motorbiscuit.com/wp-content/uploads/2023/05/1999-skyline-R34.webp",
                fit: BoxFit.fill),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 2,
                autoPlay: auto,
                scrollDirection: Axis.horizontal,
              )
            ),
          )
        ],
      ),
    );
  }
}