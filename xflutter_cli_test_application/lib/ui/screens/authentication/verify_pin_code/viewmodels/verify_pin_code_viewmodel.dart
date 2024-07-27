// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_test_application/repositories/authentication_repository.dart';
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/events/event_bus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:xflutter_cli_test_application/events/event_emitter.dart';
import 'verify_pin_code_params.dart';
import 'package:xflutter_cli_test_application/viewmodels/base_viewmodel.dart';

class VerifyPinCodeViewModel extends BaseViewModel {
  late final params = VerifyPinCodeParams();
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

  /// update [VerifyPinCodeParams.code] value, check if [code] length == 4 -> submit the code
  void onPinCodeChanged(String code) {
    params.code.postValue(code);
    if (code.length == 4) submitVerificationCode();
  }

  /// send request to re-send the verification code
  void requestVerificationCode() {
    callHttpRequest(
      () => authRepository.resendVerificationCode(
        GetVerificationCodeRequest(email: params.email),
      ),
      loading: baseParams.loading,
      callback: (result, success) {
        if (result != null && success) {
          baseParams.uiMessage.postValue(UiMessage(
            message: 'code_resent'.tr(),
            state: UiMessageState.success,
          ));
        }
      },
    );
  }

  /// submit verification code
  void submitVerificationCode() {
    eventBus.fire(const SoftKeyboardEvent());
    callHttpRequest(
      () => authRepository.verifyPinCode(
        VerifyCodeRequest(
          email: params.email,
          verificationCode: params.code.value,
        ),
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