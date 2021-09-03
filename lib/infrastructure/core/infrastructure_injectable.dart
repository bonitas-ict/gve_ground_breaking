import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


/// DEPENDENCY INJECTION FOR THIRD PARTY MODULES
/// THIS IS THE SAME CONCEPT AS DOING DEPENDENCY INHECTION WITH DAGGER FOR NATIVE ANDROID
/// SEE DESCRIPTION @https://pub.dev/packages/injectable
@module
abstract class InfrastructureModule {
  @lazySingleton
  http.Client get httpClient => http.Client();
  
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();  
}
