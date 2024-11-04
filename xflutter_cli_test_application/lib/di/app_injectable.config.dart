// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:xflutter_cli_test_application/data/data_sources/remote/authentication_rest_client/authentication_rest_client.dart' as _i620;
import 'package:xflutter_cli_test_application/data/repositories/authentication/authentication_repository.dart' as _i574;
import 'package:xflutter_cli_test_application/data/repositories/authentication/authentication_repository_impl.dart' as _i767;
import 'package:xflutter_cli_test_application/di/modules/app_module.dart' as _i596;
import 'package:xflutter_cli_test_application/environments/environments.dart' as _i446;
import 'package:xflutter_cli_test_application/mediators/controllers/authentication_controller.dart' as _i563;
import 'package:xflutter_cli_test_application/ui/resources/themes/theme_notifier.dart' as _i0;
import 'package:xflutter_cli_test_application/ui/screens/authentication/login/viewmodels/login_viewmodel.dart' as _i799;
import 'package:xflutter_cli_test_application/ui/screens/authentication/verify_pin_code/viewmodels/verify_pin_code_viewmodel.dart' as _i712;
import 'package:xflutter_cli_test_application/ui/screens/home/viewmodels/home_viewmodel.dart' as _i139;
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
    gh.factory<_i446.AppEnvironment>(
      () => appModule.testEnvironment,
      registerFor: {_test},
    );
    gh.factory<_i446.AppEnvironment>(
      () => appModule.productionEnvironment,
      registerFor: {_prod},
    );
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
}

class _$AppModule extends _i596.AppModule {}
