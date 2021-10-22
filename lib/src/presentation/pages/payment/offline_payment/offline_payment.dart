import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';

import 'widget/widget.dart';

class OfflinePaymentPage extends StatelessWidget {
  const OfflinePaymentPage({ Key? key, required String plotId, required String refNum }) : _plotId = plotId, _refNum = refNum, super(key: key);
  final String _plotId;
  final String _refNum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<OfflinePayBloc>()..add(OfflinePayEvent.setPlotId(_plotId, _refNum)),
        child: Stack(
              children: [
                SvgPicture.asset('assets/images/pay_bg.svg'),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: ()=> Navigator.of(context).pop(),
                              child: const Icon(Icons.arrow_back)
                            ),
                            const SizedBox(height: 40,),
                            Text('Offline Payment\nPortal', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: OfflineContainer(),
                    )
                  ],
                )
              ],
            ),
      ),
    );
  }
}