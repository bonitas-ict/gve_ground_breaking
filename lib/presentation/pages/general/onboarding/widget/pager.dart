import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Pager extends StatelessWidget {
  const Pager({Key? key, required this.cover_image, required this.logo_image, required this.title, required this.description}) : super(key: key);
  final String cover_image;
  final String logo_image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SvgPicture.asset(cover_image),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              children: [
                Expanded(
                  child: Center(child: Image.asset(logo_image, height: 220,),)
                ),
                Container(
                  height: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: theme.textTheme.subtitle1!.copyWith(fontSize: 19),),
                      const SizedBox(height: 8),
                      Text(description, style: theme.textTheme.bodyText2,)
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
