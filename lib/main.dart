import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_paystack_client/flutter_paystack_client.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'src/application/application.dart';
import 'src/presentation/presentation.dart';

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
  await PaystackClient.initialize(dotenv.env['PAYSTACK_KEY']!);
  runApp(const AppWidget());
}
