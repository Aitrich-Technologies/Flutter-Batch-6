
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  final CarouselController carousel1 = CarouselController();
  final CarouselController carousel2 = CarouselController();



  bool auto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Custom Carousel",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 2,
                autoPlay: auto,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Image.network(
                  "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNSZOA_TsmjxKVkITMwJ7mU2gBKMbXPRGudQ&s",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          
           SizedBox(
            height: 300,
            
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 4,
                autoPlay: auto,
                scrollDirection: Axis.vertical,
              ),
              items: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1wSfi3bQw2YEY2hMZKMZtdvMVaNcUTQt2TQ&s"),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBuI9y80XHoYLS4Giu0nOJdDW3O-3f7wyuRQ&s"),
                Image.network("data:image/jpeg;base64,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")
              ],
            ),
          
          ),
         
                  //Implement the vertical carousel here





          const SizedBox(
            height: 15,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            auto = !auto;
          });
        },
        child: const Icon(Icons.stop_sharp),
      ),
    );
  }
}