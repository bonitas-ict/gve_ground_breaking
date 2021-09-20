import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class PagerCarousel extends StatelessWidget {
  const PagerCarousel({ Key? key, required this.pageChangedCb, required this.pages, required this.pagerController }) : super(key: key);
  final ValueChanged<int> pageChangedCb;
  final List<Widget> pages;
  final CarouselController? pagerController;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: pages, 
      carouselController: pagerController,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1.0,
        autoPlay: false,
        enableInfiniteScroll: false,
        enlargeCenterPage: false,
        autoPlayCurve: Curves.linear,
        scrollDirection: Axis.horizontal,
        scrollPhysics: const ClampingScrollPhysics(),
        autoPlayInterval: const Duration(seconds: 3),
        disableCenter: true,
        onPageChanged: (index, _) => pageChangedCb(index),
      )
    );
  }
}