// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/src/di/modules/core_module.dart' as _i1042;
import 'package:core/src/environments/environments.dart' as _i438;
import 'package:core/src/ui/resources/themes/theme_notifier.dart' as _i359;
import 'package:core/src/utilities/network/connectivity.dart' as _i391;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

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
    final coreModule = _$CoreModule();
    gh.lazySingleton<_i359.ThemeNotifier>(() => _i359.ThemeNotifier());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => coreModule.provideSharedPreferences(),
      preResolve: true,
    );
    gh.lazySingleton<_i391.AppConnectivity>(() => _i391.AppConnectivity());
    gh.factory<_i438.AppEnvironment>(
      () => coreModule.developmentEnvironment,
      registerFor: {_dev},
    );
    gh.factory<_i438.AppEnvironment>(
      () => coreModule.testEnvironment,
      registerFor: {_test},
    );
    gh.factory<_i438.AppEnvironment>(
      () => coreModule.productionEnvironment,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i361.Dio>(() => coreModule.provideDio(gh<_i438.AppEnvironment>()));
    return this;
  }
}

class _$CoreModule extends _i1042.CoreModule {}
