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
    VerifyPinCode.name: (routeData) {
      final args = routeData.argsAs<VerifyPinCodeArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerifyPinCodeScreen(
          phone: args.phone,
          pageRoute: args.pageRoute,
          key: args.key,
        ),
      );
    },
  };
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
/// [VerifyPinCodeScreen]
class VerifyPinCode extends PageRouteInfo<VerifyPinCodeArgs> {
  VerifyPinCode({
    required String phone,
    PageRouteInfo<dynamic>? pageRoute,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPinCode.name,
          args: VerifyPinCodeArgs(
            phone: phone,
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
    required this.phone,
    this.pageRoute,
    this.key,
  });

  final String phone;

  final PageRouteInfo<dynamic>? pageRoute;

  final Key? key;

  @override
  String toString() {
    return 'VerifyPinCodeArgs{phone: $phone, pageRoute: $pageRoute, key: $key}';
  }
}
