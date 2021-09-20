
import 'package:gve_opening/src/domain/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _userState = 'USER_STATE';
const String _userToken = "USER_TOKEN";
const String _userName = "USER_NAME";
const String _userPin = "USER_PIN";

/// Extension class for shared preferences
extension SharedPrefExt on SharedPreferences {
  /// GET THE AUTHENTICATION STTAE
  AppState getAuthenticationState() {
    final int value = getInt(_userState) ?? 0;
    return AppState.values[value];
  }

  ///SET AUTHENTICATION STATE
  Future<void> setAuthenticationState(AppState appState) async {
    await setInt(_userState, appState.index);
  }

  /// STORE USER TOKEN
  Future<void> storeUserToken(String token) async {
    if(token.isNotEmpty){
       await setString(_userToken, "Bearer $token");
    }
   
  }

  /// retrieve the user token
  String? getUserToken() => getString(_userToken);

  /// STORE USER NAME
  Future<void> setUserName(String name) async {
    await setString(_userName, name);
  }

  /// retrieve the user name
  String? getUserName() => getString(_userName);

    /// STORE USER NAME
  Future<void> setUserPin(String pin) async {
    await setString(_userPin, pin);
  }

  /// retrieve the user name
  String? getUserPin() => getString(_userPin);
}
