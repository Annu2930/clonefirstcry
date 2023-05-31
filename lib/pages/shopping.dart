import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {

  // Dummy list of images for the carousel
  final List<String> imageList = [
    'https://sewcraftyme.com/wp-content/uploads/2020/02/IMG_3993n-001.jpg.webp',
    'https://seekatesew.com/wp-content/uploads/2013/04/summerbabydress.jpg',
    'https://bornbabies.com/public/products_image/LK3360117/600/0_LK3360117_600.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

    // CarouselSlider widget
    Padding(
      padding:  const EdgeInsets.only(top: 50.0),
      child: CarouselSlider(
      options: CarouselOptions(
      height: 400, // Adjust the height as needed
        autoPlay: true, // Enable auto-play
        aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
        enlargeCenterPage: true, // Make the center item larger
        enableInfiniteScroll: true,
        // Enable infinite scroll
      ),
      items: imageList.map((imageUrl) {
      return Builder(
      builder: (BuildContext context) {
      return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
      color: Colors.grey,
      ),
      child: Image.network(
      imageUrl,
      fit: BoxFit.cover,
      ),

        );
      },
      );
      }).toList(),
      ),
    ),
        // Dot indicators
        DotsIndicator(
          dotsCount: imageList.length,
         // position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: Colors.orange,
          ),
        ),



      ],
    );
  }
}
