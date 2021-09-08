import 'package:gve_launch/domain/auth/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String USER_STATE = 'USER_STATE';

/// Extension function to format currency
extension SharedPrefExt on SharedPreferences {
  AppState getAuthenticationState() {
    final int value = this.getInt(USER_STATE) ?? 0;
    return AppState.values[value];
  }

  Future<void> setAuthenticationState(AppState appState) async {
    await this.setInt(USER_STATE, appState.index);
  }
}
