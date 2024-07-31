// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:customer_app/models/models.dart';
import 'package:customer_app/repositories/authentication_repository.dart';
import 'package:core/core.dart';
import 'change_password_params.dart';

class ChangePasswordViewModel extends BaseViewModel {
  late final params = ChangePasswordParams();
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
      () => authRepository.changePassword(
        ChangePasswordRequest.fromJson(params.changePasswordForm.value),
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
