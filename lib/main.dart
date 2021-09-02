import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'application/application.dart';
import 'presentation/core/core.dart';
import 'presentation/injection.dart';

/// APP MAIN ENTRY POINT FILE
/// ENSURE FLUTTER WIDGETS ARE PROPERLY INITIALIZED
/// LOCK ORIENTATION TO POTRAIT ONLY
/// INITIALIZE ENVIRONMENTAL VARIABLES
/// ALL GLOBAL CONFIGURATION AND INITIALIZATION CAN BE DONE HERE

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  configureInjection(Environment.prod);
  Bloc.observer = AppBlocObserver();
  await dotenv.load(fileName: ".env");
  runApp(const AppWidget());
}
