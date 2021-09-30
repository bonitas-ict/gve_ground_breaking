import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class AgendaLoader extends StatelessWidget {
  const AgendaLoader({ Key? key }) : super(key: key);

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
