// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Addresses.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddressesScreen(),
      );
    },
    ChangePassword.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangePasswordScreen(),
      );
    },
    ForgetPassword.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgetPasswordScreen(),
      );
    },
    Login.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    Products.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductsScreen(),
      );
    },
    Register.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    ResetPassword.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordScreen(),
      );
    },
    VerifyPinCode.name: (routeData) {
      final args = routeData.argsAs<VerifyPinCodeArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerifyPinCodeScreen(
          email: args.email,
          pageRoute: args.pageRoute,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [AddressesScreen]
class Addresses extends PageRouteInfo<void> {
  const Addresses({List<PageRouteInfo>? children})
      : super(
          Addresses.name,
          initialChildren: children,
        );

  static const String name = 'Addresses';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChangePasswordScreen]
class ChangePassword extends PageRouteInfo<void> {
  const ChangePassword({List<PageRouteInfo>? children})
      : super(
          ChangePassword.name,
          initialChildren: children,
        );

  static const String name = 'ChangePassword';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgetPasswordScreen]
class ForgetPassword extends PageRouteInfo<void> {
  const ForgetPassword({List<PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class Login extends PageRouteInfo<void> {
  const Login({List<PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductsScreen]
class Products extends PageRouteInfo<void> {
  const Products({List<PageRouteInfo>? children})
      : super(
          Products.name,
          initialChildren: children,
        );

  static const String name = 'Products';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class Register extends PageRouteInfo<void> {
  const Register({List<PageRouteInfo>? children})
      : super(
          Register.name,
          initialChildren: children,
        );

  static const String name = 'Register';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordScreen]
class ResetPassword extends PageRouteInfo<void> {
  const ResetPassword({List<PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerifyPinCodeScreen]
class VerifyPinCode extends PageRouteInfo<VerifyPinCodeArgs> {
  VerifyPinCode({
    required String email,
    PageRouteInfo<dynamic>? pageRoute,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPinCode.name,
          args: VerifyPinCodeArgs(
            email: email,
            pageRoute: pageRoute,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyPinCode';

  static const PageInfo<VerifyPinCodeArgs> page = PageInfo<VerifyPinCodeArgs>(name);
}

class VerifyPinCodeArgs {
  const VerifyPinCodeArgs({
    required this.email,
    this.pageRoute,
    this.key,
  });

  final String email;

  final PageRouteInfo<dynamic>? pageRoute;

  final Key? key;

  @override
  String toString() {
    return 'VerifyPinCodeArgs{email: $email, pageRoute: $pageRoute, key: $key}';
  }
}
