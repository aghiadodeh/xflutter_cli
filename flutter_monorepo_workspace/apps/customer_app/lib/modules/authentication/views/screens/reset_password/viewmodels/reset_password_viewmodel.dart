// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:customer_app/common/models/models.dart';
import 'package:customer_app/modules/authentication/data_source/repositories/authentication_repository.dart';
import 'package:core/core.dart';
import 'reset_password_params.dart';

class ResetPasswordViewModel extends BaseViewModel {
  late final params = ResetPasswordParams();
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
      () => authRepository.resetPassword(
        ResetPasswordRequest.fromJson(params.resetPasswordForm.value),
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
