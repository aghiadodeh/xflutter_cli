// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:customer_app/common/models/models.dart';
import 'package:customer_app/modules/authentication/data_source/repositories/authentication_repository.dart';
import 'package:core/core.dart';
import 'register_params.dart';

class RegisterViewModel extends BaseViewModel {
  late final params = RegisterParams();
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
      () => authenticationRepository.register(
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
