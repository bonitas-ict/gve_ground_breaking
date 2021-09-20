
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';
import 'widgets/widgets.dart';


class VerificationPage extends StatelessWidget {
  const VerificationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<VerificationBloc>(
        create: (context) => getIt<VerificationBloc>(),
        child: const VerificationContainer(),
      ),
    );
  }
}

