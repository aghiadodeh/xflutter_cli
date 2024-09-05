// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/events/event_bus.dart';
import 'package:xflutter_cli_test_application/data_source/repositories/authentication_repository.dart';
import 'package:xflutter_cli_test_application/events/event_emitter.dart';
import 'login_params.dart';
import 'package:xflutter_cli_test_application/viewmodels/base_viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  late final params = LoginParams();
  late final eventEmitter = EventEmitter<dynamic>();
  late final authenticationRepository = AuthenticationRepository();

  @override
  void onInit() {
    // called immediately after the widget is allocated in memory.
    super.onInit();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    eventEmitter.dispose();
    authenticationRepository.dispose();
    super.onDispose();
  }

  void submit() {
    eventBus.fire(const SoftKeyboardEvent());
    callHttpRequest(
      () => authenticationRepository.login(
        LoginRequest.fromJson(params.loginForm.value),
      ),
      loading: baseParams.loading,
      callback: (result, success) {
        if (result != null && success) {
          eventEmitter.emitValue(true);
        }
      },
    );
  }
}
