// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/common/ui/widgets/buttons/text_button.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_modules_application/common/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../viewmodels/register_viewmodel.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/dimensions/dimensions.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/buttons/customized_button.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/instance_builder.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/text_fields/customized_reactive_text_field.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/text_fields/customized_reactive_phone_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<RegisterViewModel>(
      builder: (RegisterViewModel viewModel) {
        final formGroup = viewModel.params.registerForm;

        return ReactiveForm(
          formGroup: formGroup,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // form fields
              Column(
                children: [
                  // name
                  CustomizedReactiveFormField<String>(
                    formControlName: 'name',
                    labelText: 'name'.tr(),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) => formGroup.focus('email'),
                  ),
                  const SizedBox(height: formSpacing),

                  // email
                  CustomizedReactiveFormField<String>(
                    formControlName: 'email',
                    labelText: 'email'.tr(),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) => formGroup.focus('phone'),
                  ),
                  const SizedBox(height: formSpacing),

                  // phone
                  CustomizedReactivePhoneField(
                    formControlName: 'phone',
                    labelText: 'phone'.tr(),
                    textInputAction: TextInputAction.next,
                    onSubmitted: () => formGroup.focus('password'),
                  ),
                  const SizedBox(height: formSpacing),

                  // password
                  CustomizedReactiveFormField<String>(
                    formControlName: 'password',
                    labelText: 'password'.tr(),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    onSubmitted: (_) => formGroup.focus('confirm_password'),
                  ),
                  const SizedBox(height: formSpacing),

                  // confirmPassword
                  CustomizedReactiveFormField<String>(
                    formControlName: 'confirm_password',
                    labelText: 'confirm_password'.tr(),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    onSubmitted: (_) {},
                  ),
                  const SizedBox(height: formSpacing),
                ],
              ),

              // submit widget
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CustomizedButton(
                      child: Text('next'.tr()),
                      callback: () {
                        if (formGroup.valid) {
                          viewModel.submit();
                        } else {
                          formGroup.markAllAsTouched();
                        }
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('already_have_account'.tr(), style: smallTextStyle),
                      AppTextButton(
                        text: 'login'.tr(),
                        textStyle: smallTextStyle,
                        callback: () {
                          appRouter.maybePop();
                        },
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}