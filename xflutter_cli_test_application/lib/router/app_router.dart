// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:xflutter_cli_test_application/ui/screens/products/products_screen.dart';
import 'package:xflutter_cli_test_application/ui/screens/authentication/login/login_screen.dart';
import 'package:xflutter_cli_test_application/ui/screens/authentication/register/register_screen.dart';
import 'package:xflutter_cli_test_application/ui/screens/authentication/verify_pin_code/verify_pin_code_screen.dart';
import 'package:xflutter_cli_test_application/ui/screens/authentication/forget_password/forget_password_screen.dart';
import 'package:xflutter_cli_test_application/ui/screens/authentication/reset_password/reset_password_screen.dart';
import 'package:xflutter_cli_test_application/ui/screens/authentication/change_password/change_password_screen.dart';
import 'package:xflutter_cli_test_application/ui/screens/addresses/addresses_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Screen')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/addresses',
          page: Addresses.page,
        ),
        AutoRoute(
          path: '/change_password',
          page: ChangePassword.page,
        ),
        AutoRoute(
          path: '/reset_password',
          page: ResetPassword.page,
        ),
        AutoRoute(
          path: '/forget_password',
          page: ForgetPassword.page,
        ),
        AutoRoute(
          path: '/verify_pin_code',
          page: VerifyPinCode.page,
        ),
        AutoRoute(
          path: '/register',
          page: Register.page,
        ),
        AutoRoute(
          path: '/login',
          page: Login.page,
        ),
        AutoRoute(
          path: '/products',
          page: Products.page,
          initial: true,
        ),
      ];
}

final appRouter = AppRouter();

extension RouterUtils on AppRouter {
  /// push if the current route is not equal to [route],
  /// back to [route] if exists in [appRouter].[stack]
  Future<dynamic> pushToStack(PageRouteInfo route) async {
    if (appRouter.stack.map((e) => e.name).contains(route.routeName)) {
      // check if route exists in stack
      // back to route instead of duplicate same route
      return appRouter.popUntilRouteWithName(route.routeName);
    } else if (appRouter.current.name != route.routeName) {
      // push route
      return appRouter.push(route);
    }
  }
}
