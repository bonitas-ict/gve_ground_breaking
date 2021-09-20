import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_opening/src/application/application.dart';

import '../../../../../injection.dart';
import 'widgets/widgets.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AuthorizationBloc>(
        create: (context) => getIt<AuthorizationBloc>(),
        child: const AuthContainer(),
      ),
    );
  }
}
