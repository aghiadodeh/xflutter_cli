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
    CustomerProducts.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomerProductsScreen(),
      );
    }
  };
}

/// generated route for
/// [CustomerProductsScreen]
class CustomerProducts extends PageRouteInfo<void> {
  const CustomerProducts({List<PageRouteInfo>? children})
      : super(
          CustomerProducts.name,
          initialChildren: children,
        );

  static const String name = 'CustomerProducts';

  static const PageInfo<void> page = PageInfo<void>(name);
}
