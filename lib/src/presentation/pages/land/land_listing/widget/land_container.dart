import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gve_opening/src/presentation/presentation.dart';

class MainItem extends StatelessWidget {
  const MainItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Detached Plots", style: Theme.of(context).textTheme.subtitle1,),
          const SizedBox(height:4),
          Text(
            'The build type approved by the Anambra State Housing Development Corporation (ASHDC) for these plots are detached.',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 13),
          ),
          const SizedBox(height:4),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, int position){
                return const _LandCard();
              }
            ),
          )
        ],
      ),
    );
  }
}

class _LandCard extends StatelessWidget {
  const _LandCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: GestureDetector(
        onTap: ()=> context.router.navigate(PaymentMathodRoute(propertyId: 3425, propertyPrice: 25000000)),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.network(
                'https://www.norman-network.net/sites/default/files/images/122715793%20network.jpg',
                width:double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
              ListTile(
                  title: const Text('Property Title'),
                  subtitle: Text(
                    'Plot ID',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
              ),
            ],
          )
        ),
      ),
    );
  }
}