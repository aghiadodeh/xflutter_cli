// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:easy_localization/easy_localization.dart';
import 'package:xflutter_cli_test_application/events/event_bus.dart';
import 'package:xflutter_cli_test_application/data/models/ui_models/ui_message/ui_message.dart';
import 'package:xflutter_cli_test_application/data/repositories/authentication/authentication_repository.dart';
import 'package:xflutter_cli_test_application/data/models/requests/verify_code_request/verify_code_request.dart';
import 'package:xflutter_cli_test_application/data/models/requests/get_verification_code_request/get_verification_code_request.dart';
import 'package:injectable/injectable.dart';
import 'verify_pin_code_params.dart';
import 'package:xflutter_cli_test_application/viewmodels/base_viewmodel.dart';

@LazySingleton(scope: 'verifyPinCode')
class VerifyPinCodeViewModel extends BaseViewModel {
  final params = VerifyPinCodeParams();
  final AuthenticationRepository _authenticationRepository;
  VerifyPinCodeViewModel(this._authenticationRepository);

  @override
  void onInit() {
    // called immediately after the widget is allocated in memory.
    super.onInit();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    _authenticationRepository.dispose();
    super.onDispose();
  }

  /// update [VerifyPinCodeViewmodel.dartParams.code] value, check if [code] length == 4 -> submit the code
  void onPinCodeChanged(String code) {
    params.setCode(code);
    if (code.length == 4) submitVerificationCode();
  }

  /// send request to re-send the verification code
  void requestVerificationCode() {
    eventBus.fire(const SoftKeyboardEvent());
    final request = GetVerificationCodeRequest(phone: params.phone);
    callHttpRequest(
      () => _authenticationRepository.resendVerificationCode(request),
      setLoading: baseParams.setLoading,
      callback: (result, success) {
        if (result != null && success) {
          showUiMessage(
            uiMessage: UiMessage(
              message: 'code_resent'.tr(),
              state: UiMessageState.success,
            ),
          );
        }
      },
    );
  }

  /// submit verification code
  void submitVerificationCode() {
    eventBus.fire(const SoftKeyboardEvent());
    final request = VerifyCodeRequest(phone: params.phone, verificationCode: params.code.value);
    callHttpRequest(
      () => _authenticationRepository.verifyPinCode(request),
      setLoading: baseParams.setLoading,
      callback: (result, success) {
        if (result != null && success) {
          params.setResult(result!);
        }
      },
    );
  }
}
