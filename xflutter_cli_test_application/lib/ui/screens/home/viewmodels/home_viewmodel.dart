// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:injectable/injectable.dart';
import 'home_params.dart';
import 'package:xflutter_cli_test_application/viewmodels/base_viewmodel.dart';

@LazySingleton(scope: 'home')
class HomeViewModel extends BaseViewModel {
  final params = HomeParams();

  @override
  void onInit() {
    // called immediately after the widget is allocated in memory.
    super.onInit();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }
}
