/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xflutter_cli_test_application/utilities/di/di.dart';
import 'package:xflutter_cli_test_application/events/event_bus.dart';
import 'theme.dart';
import 'dark_theme.dart';

class ThemeNotifier {
  final themeMode = MutableLiveData(value: ThemeMode.light);
  ThemeData get theme => themeMode.value == ThemeMode.dark ? darkTheme : lightTheme;

  SharedPreferences get _sharedPreferences => findInstance<SharedPreferences>();

  /// register global instance of [ThemeNotifier].
  static Future<void> initialize() async {
    putInstance(ThemeNotifier());
  }

  ThemeNotifier() {
    initializeThemeMode();
  }

  /// check last saved [ThemeMode] from localStorage
  void initializeThemeMode() {
    final darkMode = _sharedPreferences.getBool("dark_theme") ?? false;
    final themeMode = darkMode ? ThemeMode.dark : ThemeMode.light;
    if (themeMode != this.themeMode.value) {
      this.themeMode.postValue(themeMode);
    }
  }

  /// change [ThemeMode]
  Future<void> changeThemeMode(ThemeMode mode) async {
    await _sharedPreferences.setBool('dark_theme', mode == ThemeMode.dark);
    themeMode.postValue(mode);
    eventBus.fire(const ThemeChangedEvent());
  }
}
