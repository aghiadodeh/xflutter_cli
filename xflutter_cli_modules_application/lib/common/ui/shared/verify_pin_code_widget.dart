// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/text_fields/pin_code_field.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/buttons/text_button.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/buttons/customized_button.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';

class VerifyPinCodeWidget extends StatelessWidget {
  final MutableLiveData<String> code;
  final String? receiver;
  final Function(String code) onChanged;
  final Function() onSubmit;
  final Function()? onResendCode;
  final int length;

  const VerifyPinCodeWidget({
    required this.code,
    required this.receiver,
    required this.onChanged,
    required this.onSubmit,
    this.onResendCode,
    this.length = 4,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text("please_enter_code".tr()),
            if (receiver != null) Text(receiver!),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: PinCodeField(onChanged: onChanged),
            ),
            if (onResendCode != null)
              AppTextButton(
                text: "resend_code".tr(),
                callback: onResendCode!,
                textStyle: verySmallTextStyle,
              ),
          ],
        ),
        LiveDataBuilder<String>(
          data: code,
          builder: (context, value) => SizedBox(
            width: double.infinity,
            child: CustomizedButton(
              enabled: value.length == length,
              callback: onSubmit,
              child: Text("next".tr()),
            ),
          ),
        ),
      ],
    );
  }
}
