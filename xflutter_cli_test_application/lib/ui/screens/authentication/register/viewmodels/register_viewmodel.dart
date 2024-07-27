// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/events/event_bus.dart';
import 'package:xflutter_cli_test_application/repositories/authentication_repository.dart';
import 'package:xflutter_cli_test_application/events/event_emitter.dart';
import 'register_params.dart';
import 'package:xflutter_cli_test_application/viewmodels/base_viewmodel.dart';

class RegisterViewModel extends BaseViewModel {
  late final params = RegisterParams();
  late final eventEmitter = EventEmitter<dynamic>();
  late final authRepository = AuthRepository();

  @override
  void onInit() {
    // called immediately after the widget is allocated in memory.
    super.onInit();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    eventEmitter.dispose();
    authRepository.dispose();
    super.onDispose();
  }

  void submit() {
    eventBus.fire(const SoftKeyboardEvent());
    callHttpRequest(
      () => authRepository.register(
        RegisterRequest.fromJson(params.registerForm.value),
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
