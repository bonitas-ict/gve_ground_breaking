import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_opening/src/application/application.dart';
import '../../../../../injection.dart';
import 'widgets/widgets.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<VerificationBloc>(
        create: (context) => getIt<VerificationBloc>(),
        child: const AccountContainer(),
      ),
    );
  }
}