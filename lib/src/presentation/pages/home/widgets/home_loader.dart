import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class HomeLoader extends StatelessWidget {
  const HomeLoader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical:30),
          child: Column(
            children:const[
              _TimerLoader(),
              _CardLoader(),
              SizedBox(height: 8),
              _CardLoader(),
              SizedBox(height: 8),
              _CardLoader(),
              SizedBox(height: 8),
              _CardLoader(),
              SizedBox(height: 8),
              _CardLoader(),
              SizedBox(height: 8),
              _CardLoader(),
              SizedBox(height: 8),
              _CardLoader()
            ]
          ),
        ),
      ),
    );
  }
}

class _TimerLoader extends StatelessWidget {
  const _TimerLoader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(height: 20, width: 220, color: Colors.white,),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(height: 55, width: 37, color: Colors.white,),
            const SizedBox(width: 8),
            Container(height: 55, width: 37, color: Colors.white,),
            const SizedBox(width: 8),
            Container(height: 55, width: 37, color: Colors.white,),
          ],
        ),
        const SizedBox(height: 40),
        Container(height: 20, width: 220, color: Colors.white,),
        const SizedBox(height: 20)
      ]
    );
  }
}

class _CardLoader extends StatelessWidget {
  const _CardLoader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height:15, color: Colors.white, width: 60),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 80,
            color: Colors.white ,
          ),
        )
      ],
    );
  }
}
