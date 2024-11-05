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
import 'package:xflutter_cli_modules_application/common/data/database/app_store.dart' as _i715;
import 'package:xflutter_cli_modules_application/common/di/modules/app_module.dart' as _i207;
import 'package:xflutter_cli_modules_application/common/environments/environments.dart' as _i607;
import 'package:xflutter_cli_modules_application/common/mediators/controllers/authentication_controller.dart' as _i272;
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme_notifier.dart' as _i76;
import 'package:xflutter_cli_modules_application/core/utilities/network/connectivity.dart' as _i419;
import 'package:xflutter_cli_modules_application/modules/authentication/data/data_sources/remote/authentication_rest_client/authentication_rest_client.dart'
    as _i125;
import 'package:xflutter_cli_modules_application/modules/authentication/data/repositories/authentication/authentication_repository.dart'
    as _i583;
import 'package:xflutter_cli_modules_application/modules/authentication/data/repositories/authentication/authentication_repository_impl.dart'
    as _i582;
import 'package:xflutter_cli_modules_application/modules/authentication/presentation/screens/change_password/viewmodels/change_password_viewmodel.dart'
    as _i372;
import 'package:xflutter_cli_modules_application/modules/authentication/presentation/screens/forget_password/viewmodels/forget_password_viewmodel.dart'
    as _i844;
import 'package:xflutter_cli_modules_application/modules/authentication/presentation/screens/login/viewmodels/login_viewmodel.dart'
    as _i171;
import 'package:xflutter_cli_modules_application/modules/authentication/presentation/screens/register/viewmodels/register_viewmodel.dart'
    as _i244;
import 'package:xflutter_cli_modules_application/modules/authentication/presentation/screens/reset_password/viewmodels/reset_password_viewmodel.dart'
    as _i756;
import 'package:xflutter_cli_modules_application/modules/authentication/presentation/screens/verify_pin_code/viewmodels/verify_pin_code_viewmodel.dart'
    as _i199;
import 'package:xflutter_cli_modules_application/modules/products/data/data_sources/local/products/products_local_data_source.dart'
    as _i299;
import 'package:xflutter_cli_modules_application/modules/products/data/data_sources/local/products/products_local_data_source_impl.dart'
    as _i56;
import 'package:xflutter_cli_modules_application/modules/products/data/data_sources/remote/products/products_remote_data_source.dart'
    as _i423;
import 'package:xflutter_cli_modules_application/modules/products/data/repositories/products/products_repository.dart' as _i694;
import 'package:xflutter_cli_modules_application/modules/products/data/repositories/products/products_repository_impl.dart' as _i345;
import 'package:xflutter_cli_modules_application/modules/products/mediators/paging/products_paging_controller.dart' as _i772;
import 'package:xflutter_cli_modules_application/modules/products/presentation/screens/create_product/viewmodels/create_product_viewmodel.dart'
    as _i260;
import 'package:xflutter_cli_modules_application/modules/products/presentation/screens/products_list/viewmodels/products_list_viewmodel.dart'
    as _i1002;
import 'package:xflutter_cli_modules_application/modules/products/presentation/screens/update_product/viewmodels/update_product_viewmodel.dart'
    as _i1003;
import 'package:xflutter_cli_modules_application/modules/products/presentation/screens/view_product_details/viewmodels/view_product_details_viewmodel.dart'
    as _i502;

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
    gh.lazySingleton<_i419.AppConnectivity>(() => _i419.AppConnectivity());
    gh.lazySingleton<_i76.ThemeNotifier>(() => _i76.ThemeNotifier());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => appModule.provideSharedPreferences(),
      preResolve: true,
    );
    gh.lazySingleton<_i272.AuthenticationController>(() => _i272.AuthenticationController());
    gh.factory<_i607.AppEnvironment>(
      () => appModule.developmentEnvironment,
      registerFor: {_dev},
    );
    await gh.lazySingletonAsync<_i497.Directory>(
      () => appModule.provideDocumentsDirectory(),
      instanceName: 'AppDocumentsDirectory',
      preResolve: true,
    );
    gh.factory<_i607.AppEnvironment>(
      () => appModule.testEnvironment,
      registerFor: {_test},
    );
    gh.factory<_i607.AppEnvironment>(
      () => appModule.productionEnvironment,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i715.ObjectBoxAppStore>(() => _i715.ObjectBoxAppStore(gh<_i497.Directory>(instanceName: 'AppDocumentsDirectory')));
    gh.lazySingleton<_i361.Dio>(() => appModule.provideDio(gh<_i607.AppEnvironment>()));
    return this;
  }

// initializes the registration of authentication-scope dependencies inside of GetIt
  _i174.GetIt initAuthenticationScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'authentication',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i125.AuthenticationRestClient>(() => _i125.AuthenticationRestClient(gh<_i361.Dio>()));
        gh.lazySingleton<_i583.AuthenticationRepository>(() => _i582.AuthenticationRepositoryImpl(gh<_i125.AuthenticationRestClient>()));
      },
    );
  }

// initializes the registration of products-scope dependencies inside of GetIt
  _i174.GetIt initProductsScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'products',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i423.ProductsRemoteDataSource>(() => _i423.ProductsRemoteDataSource(gh<_i361.Dio>()));
        gh.lazySingleton<_i299.ProductsLocalDataSource>(() => _i56.ProductsLocalDataSourceImpl(gh<_i715.ObjectBoxAppStore>()));
        gh.lazySingleton<_i694.ProductsRepository>(() => _i345.ProductsRepositoryImpl(
              gh<_i423.ProductsRemoteDataSource>(),
              gh<_i299.ProductsLocalDataSource>(),
            ));
      },
    );
  }

// initializes the registration of updateProduct-scope dependencies inside of GetIt
  _i174.GetIt initUpdateProductScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'updateProduct',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i1003.UpdateProductViewModel>(() => _i1003.UpdateProductViewModel(gh<_i694.ProductsRepository>()));
      },
    );
  }

// initializes the registration of viewProductDetails-scope dependencies inside of GetIt
  _i174.GetIt initViewProductDetailsScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'viewProductDetails',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i502.ViewProductDetailsViewModel>(() => _i502.ViewProductDetailsViewModel(gh<_i694.ProductsRepository>()));
      },
    );
  }

// initializes the registration of createProduct-scope dependencies inside of GetIt
  _i174.GetIt initCreateProductScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'createProduct',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i260.CreateProductViewModel>(() => _i260.CreateProductViewModel(gh<_i694.ProductsRepository>()));
      },
    );
  }

// initializes the registration of register-scope dependencies inside of GetIt
  _i174.GetIt initRegisterScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'register',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i244.RegisterViewModel>(() => _i244.RegisterViewModel(gh<_i583.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of verifyPinCode-scope dependencies inside of GetIt
  _i174.GetIt initVerifyPinCodeScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'verifyPinCode',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i199.VerifyPinCodeViewModel>(() => _i199.VerifyPinCodeViewModel(gh<_i583.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of changePassword-scope dependencies inside of GetIt
  _i174.GetIt initChangePasswordScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'changePassword',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i372.ChangePasswordViewModel>(() => _i372.ChangePasswordViewModel(gh<_i583.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of forgetPassword-scope dependencies inside of GetIt
  _i174.GetIt initForgetPasswordScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'forgetPassword',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i844.ForgetPasswordViewModel>(() => _i844.ForgetPasswordViewModel(gh<_i583.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of resetPassword-scope dependencies inside of GetIt
  _i174.GetIt initResetPasswordScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'resetPassword',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i756.ResetPasswordViewModel>(() => _i756.ResetPasswordViewModel(gh<_i583.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of login-scope dependencies inside of GetIt
  _i174.GetIt initLoginScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'login',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i171.LoginViewModel>(() => _i171.LoginViewModel(gh<_i583.AuthenticationRepository>()));
      },
    );
  }

// initializes the registration of productsPaging-scope dependencies inside of GetIt
  _i174.GetIt initProductsPagingScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'productsPaging',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i772.ProductsPagingController>(() => _i772.ProductsPagingController(gh<_i694.ProductsRepository>()));
      },
    );
  }

// initializes the registration of productsList-scope dependencies inside of GetIt
  _i174.GetIt initProductsListScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'productsList',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i1002.ProductsListViewModel>(() => _i1002.ProductsListViewModel(
              gh<_i694.ProductsRepository>(),
              gh<_i772.ProductsPagingController>(),
            ));
      },
    );
  }
}

class _$AppModule extends _i207.AppModule {}
