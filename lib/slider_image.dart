import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderScreen extends StatefulWidget {
  final List imageList;
  final String title;
  const SliderScreen({Key? key, required this.imageList, required this.title})
      : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: widget.imageList
                .map((e) => Container(
                      height: 180,
                      width: 430,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Container(
                        height: 150,
                        width: 400,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(e),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              // height: 400,
              // aspectRatio: 16 / 9,
              // viewportFraction: 0.8,
              // initialPage: 0,
              // enableInfiniteScroll: true,
              // reverse: false,
              // autoPlay: true,
              // autoPlayInterval: Duration(seconds: 3),
              // autoPlayAnimationDuration: Duration(milliseconds: 800),
              // autoPlayCurve: Curves.fastOutSlowIn,
              // enlargeCenterPage: true,
              // enlargeFactor: 0.3,
              // scrollDirection: Axis.horizontal,
              autoPlayInterval: const Duration(
                seconds: 3,
              ),
              onPageChanged: (i, result) {
                setState(() {
                  currentIndex = i;
                });
              },
              autoPlay: true,
              autoPlayCurve: Curves.easeIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 900),
              enlargeCenterPage: true,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imageList.length,
              (index) => Container(
                height: 10,
                width: currentIndex == index ? 30 : 10,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: currentIndex == index ? Colors.blue : Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            widget.title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 36,
            ),
          )
        ],
      ),
    );
  }
}
