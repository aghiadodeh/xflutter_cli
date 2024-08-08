// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:customer_app/modules/products/views/screens/customer_products/customer_products_screen.dart';
import 'package:customer_app/modules/authentication/views/screens/login/login_screen.dart';
import 'package:customer_app/modules/authentication/views/screens/register/register_screen.dart';
import 'package:customer_app/modules/authentication/views/screens/verify_pin_code/verify_pin_code_screen.dart';
import 'package:customer_app/modules/authentication/views/screens/forget_password/forget_password_screen.dart';
import 'package:customer_app/modules/authentication/views/screens/reset_password/reset_password_screen.dart';
import 'package:customer_app/modules/authentication/views/screens/change_password/change_password_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Screen')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
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
          path: '/customer_products',
          page: CustomerProducts.page,
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