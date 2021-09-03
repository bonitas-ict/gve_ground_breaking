import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../application/application.dart';
import '../presentation.dart';

final AppRouter _appRouter = AppRouter();

class AppEntry extends StatelessWidget {
  AppEntry({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      themeMode: ThemeMode.system,
      theme: LightTheme.day(),
      darkTheme: DarkTheme.night(),
      builder: (BuildContext ctx, Widget? child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.map(
              initial: (_){},
              authenticated: (_)=>_appRouter.replaceAll([const HomeRoute()]),
              unAuthenticated: (_) => _appRouter.replaceAll([const AuthorizationRoute()]),
            );
          },
          child:child,
        );
      },
    );
  }
}
