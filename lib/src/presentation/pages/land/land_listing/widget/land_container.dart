import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gve_opening/src/domain/land/land.dart';
import 'package:gve_opening/src/presentation/presentation.dart';

class MainItem extends StatelessWidget {
  const MainItem({ Key? key, required this.plotCategory }) : super(key: key);
  final PlotCategory plotCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(plotCategory.categoryName, style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16),),
          const SizedBox(height:4),
          Text(
            plotCategory.description,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 15),
          ),
          const SizedBox(height:4),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: plotCategory.Properties.length,
              itemBuilder: (_, int position){
                return _LandCard(plot: plotCategory.Properties[position]);
              }
            ),
          )
        ],
      ),
    );
  }
}

class _LandCard extends StatelessWidget {
  const _LandCard({ Key? key, required this.plot }) : super(key: key);
  final Plot plot;
 
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: plot.isTaken == true ? false: true,
      child: Container(
        margin: const EdgeInsets.only(right:8),
        width: 144,
        child: GestureDetector(
          onTap: ()=> context.router.navigate(PaymentMathodRoute(propertyId: plot.plotId, propertyPrice: plot.price)),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),	
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: CachedNetworkImage(
                    imageUrl: dotenv.env['BASE_URL']!+plot.thumbnailUrl,
                    placeholder: (context, url) => const Center(child:CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Center(child:Icon(Icons.error)),
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                      plot.plotId,
                      style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}