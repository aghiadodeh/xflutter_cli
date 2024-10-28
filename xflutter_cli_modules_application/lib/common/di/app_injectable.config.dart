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
import 'package:xflutter_cli_modules_application/common/di/modules/app_module.dart' as _i207;
import 'package:xflutter_cli_modules_application/common/environments/environments.dart' as _i607;
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme_notifier.dart' as _i76;
import 'package:xflutter_cli_modules_application/core/utilities/network/connectivity.dart' as _i419;

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
    gh.factory<_i607.AppEnvironment>(
      () => appModule.developmentEnvironment,
      registerFor: {_dev},
    );
    gh.factory<_i607.AppEnvironment>(
      () => appModule.testEnvironment,
      registerFor: {_test},
    );
    gh.factory<_i607.AppEnvironment>(
      () => appModule.productionEnvironment,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i361.Dio>(() => appModule.provideDio(gh<_i607.AppEnvironment>()));
    return this;
  }
}

class _$AppModule extends _i207.AppModule {}
