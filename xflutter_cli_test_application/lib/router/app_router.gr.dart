// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CreateProductScreen]
class CreateProduct extends PageRouteInfo<void> {
  const CreateProduct({List<PageRouteInfo>? children})
      : super(
          CreateProduct.name,
          initialChildren: children,
        );

  static const String name = 'CreateProduct';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateProductScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [ProductsListScreen]
class ProductsList extends PageRouteInfo<void> {
  const ProductsList({List<PageRouteInfo>? children})
      : super(
          ProductsList.name,
          initialChildren: children,
        );

  static const String name = 'ProductsList';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductsListScreen();
    },
  );
}

/// generated route for
/// [UpdateProductScreen]
class UpdateProduct extends PageRouteInfo<UpdateProductArgs> {
  UpdateProduct({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateProduct.name,
          args: UpdateProductArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateProduct';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateProductArgs>();
      return UpdateProductScreen(
        id: args.id,
        key: args.key,
      );
    },
  );
}

class UpdateProductArgs {
  const UpdateProductArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'UpdateProductArgs{id: $id, key: $key}';
  }
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyPinCodeArgs>();
      return VerifyPinCodeScreen(
        phone: args.phone,
        pageRoute: args.pageRoute,
        key: args.key,
      );
    },
  );
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

/// generated route for
/// [ViewProductDetailsScreen]
class ViewProductDetails extends PageRouteInfo<ViewProductDetailsArgs> {
  ViewProductDetails({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ViewProductDetails.name,
          args: ViewProductDetailsArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewProductDetails';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ViewProductDetailsArgs>();
      return ViewProductDetailsScreen(
        id: args.id,
        key: args.key,
      );
    },
  );
}

class ViewProductDetailsArgs {
  const ViewProductDetailsArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'ViewProductDetailsArgs{id: $id, key: $key}';
  }
}
