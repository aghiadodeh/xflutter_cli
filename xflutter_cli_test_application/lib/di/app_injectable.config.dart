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
import 'package:xflutter_cli_test_application/di/modules/app_module.dart' as _i596;
import 'package:xflutter_cli_test_application/environments/environments.dart' as _i446;
import 'package:xflutter_cli_test_application/ui/resources/themes/theme_notifier.dart' as _i0;
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
}

class _$AppModule extends _i596.AppModule {}
