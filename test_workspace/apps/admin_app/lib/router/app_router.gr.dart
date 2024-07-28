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
    AdminProducts.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminProductsScreen(),
      );
    }
  };
}

/// generated route for
/// [AdminProductsScreen]
class AdminProducts extends PageRouteInfo<void> {
  const AdminProducts({List<PageRouteInfo>? children})
      : super(
          AdminProducts.name,
          initialChildren: children,
        );

  static const String name = 'AdminProducts';

  static const PageInfo<void> page = PageInfo<void>(name);
}
