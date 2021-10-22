import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Pager extends StatelessWidget {
  const Pager({Key? key, this.coverImage, required this.logoImage, required this.title, required this.description}) : super(key: key);
  final String? coverImage;
  final String logoImage;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: coverImage!=null ? SvgPicture.asset(coverImage!):null ,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              children: [
                Expanded(
                  child: Center(child: Image.asset(logoImage, height: 220,),)
                ),
                SizedBox(
                  height: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: theme.textTheme.headline5,),
                      const SizedBox(height: 8),
                      Text(description, style: theme.textTheme.bodyText1,)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
