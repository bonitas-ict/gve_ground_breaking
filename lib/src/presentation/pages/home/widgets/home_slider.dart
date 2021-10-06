import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

const List<Widget> _pages = [
  _SlideItem(label:'State of the art facility', imagePath: 'https://informa-mea-res.cloudinary.com/image/upload/training/course-images/certificate-in-real-estate-process-for-development-investment-repdi-course.jpg',),
  _SlideItem(label:'Strategic location', imagePath: 'https://torbitalimited.com/wp-content/uploads/2018/09/real-estate.jpg',),
  _SlideItem(label:'Awesome finishing', imagePath: 'https://www.norman-network.net/sites/default/files/images/122715793%20network.jpg',)
];

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int slideIndex = 0;
  CarouselController? pagerController = CarouselController();

  void sliderCb(int position) {
    setState(() {
      slideIndex = position;
    });
  }

  @override
  void dispose() {
    pagerController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: pagerController,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              autoPlay: true,
              enableInfiniteScroll: true,
              enlargeCenterPage: false,
              autoPlayCurve: Curves.linear,
              scrollDirection: Axis.horizontal,
              autoPlayInterval: const Duration(seconds: 3),
              disableCenter: true,
              onPageChanged: (index, _) => sliderCb(index),
            ),
            items: _pages,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(icon: const Icon(Icons.chevron_left), onPressed: ()=>pagerController?.previousPage(), color: Colors.white,),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(icon: const Icon(Icons.chevron_right), onPressed: ()=>pagerController?.nextPage(),color: Colors.white,),
          )
        ],
      ),
    );
  }
}

class _SlideItem extends StatelessWidget {
  const _SlideItem({ Key? key, required this.imagePath, required this.label }) : super(key: key);
  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.network(
            imagePath,
            width:double.infinity,
            height: 180,
            fit: BoxFit.fill,
          ),
          Container(color: Colors.black26, height: 200,),
          Positioned(
            bottom: 16,
            left: 16,
            child: Text(label, style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),)
          )
        ],
      ),
    );
  }
}
