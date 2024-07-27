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
    Products.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductsScreen(),
      );
    }
  };
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
