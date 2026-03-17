import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarouselSliderApp extends StatefulWidget {
  const CarouselSliderApp({super.key});
  @override
  State<CarouselSliderApp> createState() => _CarouselSliderAppState();
}
class _CarouselSliderAppState extends State<CarouselSliderApp> {
  bool auto=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Image Carousel",style: TextStyle(fontSize: 30,color: Colors.white),),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          child: CarouselSlider(
            options:CarouselOptions(
              enlargeCenterPage: true,
              aspectRatio: 1,
              autoPlay: auto,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Image.network("https://imgd-ct.aeplcdn.com/1056x660/n/cw/ec/159231/swift-right-front-three-quarter.jpeg?isig=0&q=80",fit: BoxFit.fill,),
              Image.network("https://images.91wheels.com/assets/b_images/main/models/profile/profile1702881423.png?width=480&q=60?w=1200&q=60",fit: BoxFit.fill,),
              Image.network("https://wallpapercg.com/media/ts_2x/3238.webp",fit: BoxFit.fill,),
              Image.network("https://imgd.aeplcdn.com/1056x594/n/cw/ec/95229/ninja-h2r-right-side-view-2.png?isig=0&q=80",fit: BoxFit.fill,),
            ],
          ),
        ),
      ),
    );
  }
}