import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_launch/application/application.dart';

import '../injection.dart';
import 'core.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (_) => getIt<AuthenticationBloc>()..add(const UnAuthenticatedEvent())),
      ],
      child: AppEntry(),
    );
  }
}

