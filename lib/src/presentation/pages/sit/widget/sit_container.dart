import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gve_opening/src/domain/domain.dart';

class SitContainer extends StatelessWidget {
  const SitContainer({Key? key, required this.sit}) : super(key: key);
  final Seat sit;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: InteractiveViewer(
              panEnabled: true, // Set it to false
              boundaryMargin: const EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 1,
              child: CachedNetworkImage(
                imageUrl:
                    'https://www.norman-network.net/sites/default/files/images/122715793%20network.jpg',
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Seat Details',
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.black, fontSize: 18),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text('User Pin: ', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(
                width: 8,
              ),
              Text(
                sit.pin.toString(),
                style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.black, ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text('Seat Allocation: ',style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Table ${sit.tableNumber.toString()}, Seat ${sit.seatNumber.toString()}',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.black, ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
