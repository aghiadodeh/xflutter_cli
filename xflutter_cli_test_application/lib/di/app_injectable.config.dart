// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i497;

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:xflutter_cli_test_application/data/data_sources/local/categories/categories_local_data_source.dart' as _i486;
import 'package:xflutter_cli_test_application/data/data_sources/local/categories/categories_local_data_source_impl.dart' as _i756;
import 'package:xflutter_cli_test_application/data/data_sources/local/products/products_local_data_source.dart' as _i869;
import 'package:xflutter_cli_test_application/data/data_sources/local/products/products_local_data_source_impl.dart' as _i354;
import 'package:xflutter_cli_test_application/data/data_sources/remote/authentication_rest_client/authentication_rest_client.dart' as _i620;
import 'package:xflutter_cli_test_application/data/data_sources/remote/products/products_remote_data_source.dart' as _i238;
import 'package:xflutter_cli_test_application/data/database/app_store.dart' as _i701;
import 'package:xflutter_cli_test_application/data/repositories/authentication/authentication_repository.dart' as _i574;
import 'package:xflutter_cli_test_application/data/repositories/authentication/authentication_repository_impl.dart' as _i767;
import 'package:xflutter_cli_test_application/data/repositories/categories/categories_repository.dart' as _i395;
import 'package:xflutter_cli_test_application/data/repositories/categories/categories_repository_impl.dart' as _i418;
import 'package:xflutter_cli_test_application/data/repositories/products/products_repository.dart' as _i724;
import 'package:xflutter_cli_test_application/data/repositories/products/products_repository_impl.dart' as _i606;
import 'package:xflutter_cli_test_application/di/modules/app_module.dart' as _i596;
import 'package:xflutter_cli_test_application/environments/environments.dart' as _i446;
import 'package:xflutter_cli_test_application/mediators/controllers/authentication_controller.dart' as _i563;
import 'package:xflutter_cli_test_application/mediators/paging/products_paging_controller.dart' as _i440;
import 'package:xflutter_cli_test_application/ui/resources/themes/theme_notifier.dart' as _i0;
import 'package:xflutter_cli_test_application/ui/screens/authentication/login/viewmodels/login_viewmodel.dart' as _i799;
import 'package:xflutter_cli_test_application/ui/screens/authentication/verify_pin_code/viewmodels/verify_pin_code_viewmodel.dart' as _i712;
import 'package:xflutter_cli_test_application/ui/screens/home/viewmodels/home_viewmodel.dart' as _i139;
import 'package:xflutter_cli_test_application/ui/screens/products/create_product/viewmodels/create_product_viewmodel.dart' as _i434;
import 'package:xflutter_cli_test_application/ui/screens/products/products_list/viewmodels/products_list_viewmodel.dart' as _i566;
import 'package:xflutter_cli_test_application/ui/screens/products/update_product/viewmodels/update_product_viewmodel.dart' as _i923;
import 'package:xflutter_cli_test_application/ui/screens/products/view_product_details/viewmodels/view_product_details_viewmodel.dart'
    as _i525;
import 'package:xflutter_cli_test_application/utilities/network/connectivity.dart' as _i1037;

const String _dev = 'dev';
const String _test = 'test';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i0.ThemeNotifier>(() => _i0.ThemeNotifier());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => appModule.provideSharedPreferences(),
      preResolve: true,
    );
    gh.lazySingleton<_i563.AuthenticationController>(() => _i563.AuthenticationController());
    gh.lazySingleton<_i1037.AppConnectivity>(() => _i1037.AppConnectivity());
    gh.factory<_i446.AppEnvironment>(
      () => appModule.developmentEnvironment,
      registerFor: {_dev},
    );
    gh.lazySingleton<_i361.Dio>(() => appModule.provideDio(gh<_i446.AppEnvironment>()));
    await gh.lazySingletonAsync<_i497.Directory>(
      () => appModule.provideDocumentsDirectory(),
      instanceName: 'AppDocumentsDirectory',
      preResolve: true,
    );
    gh.factory<_i446.AppEnvironment>(
      () => appModule.testEnvironment,
      registerFor: {_test},
    );
    gh.factory<_i446.AppEnvironment>(
      () => appModule.productionEnvironment,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i701.ObjectBoxAppStore>(() => _i701.ObjectBoxAppStore(gh<_i497.Directory>(instanceName: 'AppDocumentsDirectory')));
    return this;
  }

// initializes the registration of home-scope dependencies inside of GetIt
  _i174.GetIt initHomeScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'home',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i139.HomeViewModel>(() => _i139.HomeViewModel());
      },
    );
  }

// initializes the registration of products-scope dependencies inside of GetIt
  _i174.GetIt initProductsScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'products',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i869.ProductsLocalDataSource>(() => _i354.ProductsLocalDataSourceImpl(gh<_i701.ObjectBoxAppStore>()));
        gh.lazySingleton<_i238.ProductsRemoteDataSource>(() => _i238.ProductsRemoteDataSource(gh<_i361.Dio>()));
        gh.lazySingleton<_i724.ProductsRepository>(() => _i606.ProductsRepositoryImpl(
              gh<_i238.ProductsRemoteDataSource>(),
              gh<_i869.ProductsLocalDataSource>(),
            ));
      },
    );
  }

// initializes the registration of authentication-scope dependencies inside of GetIt
  _i174.GetIt initAuthenticationScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'authentication',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i620.AuthenticationRestClient>(() => _i620.AuthenticationRestClient(gh<_i361.Dio>()));
        gh.lazySingleton<_i574.AuthenticationRepository>(() => _i767.AuthenticationRepositoryImpl(gh<_i620.AuthenticationRestClient>()));
      },
    );
  }

// initializes the registration of categories-scope dependencies inside of GetIt
  _i174.GetIt initCategoriesScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'categories',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i486.CategoriesLocalDataSource>(() => _i756.CategoriesLocalDataSourceImpl(gh<_i701.ObjectBoxAppStore>()));
        gh.lazySingleton<_i395.CategoriesRepository>(() => _i418.CategoriesRepositoryImpl(gh<_i486.CategoriesLocalDataSource>()));
      },
    );
  }

// initializes the registration of login-scope dependencies inside of GetIt
  _i174.GetIt initLoginScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'login',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i799.LoginViewModel>(() => _i799.LoginViewModel(gh<_i574.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of verifyPinCode-scope dependencies inside of GetIt
  _i174.GetIt initVerifyPinCodeScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'verifyPinCode',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i712.VerifyPinCodeViewModel>(() => _i712.VerifyPinCodeViewModel(gh<_i574.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of createProduct-scope dependencies inside of GetIt
  _i174.GetIt initCreateProductScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'createProduct',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i434.CreateProductViewModel>(() => _i434.CreateProductViewModel(gh<_i724.ProductsRepository>()));
      },
    );
  }

// initializes the registration of viewProductDetails-scope dependencies inside of GetIt
  _i174.GetIt initViewProductDetailsScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'viewProductDetails',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i525.ViewProductDetailsViewModel>(() => _i525.ViewProductDetailsViewModel(gh<_i724.ProductsRepository>()));
      },
    );
  }

// initializes the registration of updateProduct-scope dependencies inside of GetIt
  _i174.GetIt initUpdateProductScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'updateProduct',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i923.UpdateProductViewModel>(() => _i923.UpdateProductViewModel(gh<_i724.ProductsRepository>()));
      },
    );
  }

// initializes the registration of productsPaging-scope dependencies inside of GetIt
  _i174.GetIt initProductsPagingScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'productsPaging',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i440.ProductsPagingController>(() => _i440.ProductsPagingController(gh<_i724.ProductsRepository>()));
      },
    );
  }

// initializes the registration of productsList-scope dependencies inside of GetIt
  _i174.GetIt initProductsListScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'productsList',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i566.ProductsListViewModel>(() => _i566.ProductsListViewModel(
              gh<_i724.ProductsRepository>(),
              gh<_i440.ProductsPagingController>(),
            ));
      },
    );
  }
}

class _$AppModule extends _i596.AppModule {}
