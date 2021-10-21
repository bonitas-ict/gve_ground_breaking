import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../injection.dart';
import '../../application/application.dart';
import 'core.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthenticationBloc>()..add(const AuthenticationEvent.verifiedState())),
        BlocProvider(create: (_) => getIt<NotificationListBloc>()..add(const NotificationListEvent.loadNotifications())),
        BlocProvider(create: (_) => getIt<NotificationCountBloc>()..add(const NotificationCountEvent.loadNotificationCount())),
      ],
      child: const AppEntry(),
    );
  }
}

