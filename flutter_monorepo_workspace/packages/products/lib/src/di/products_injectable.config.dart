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
import 'package:products/src/data/data_sources/local/products/products_local_data_source.dart'
    as _i306;
import 'package:products/src/data/data_sources/local/products/products_local_data_source_impl.dart'
    as _i57;
import 'package:products/src/data/data_sources/remote/products/products_remote_data_source.dart'
    as _i494;
import 'package:products/src/data/database/products_store.dart' as _i458;
import 'package:products/src/data/repositories/products/products_repository.dart'
    as _i932;
import 'package:products/src/data/repositories/products/products_repository_impl.dart'
    as _i440;
import 'package:products/src/di/modules/products_module.dart' as _i385;
import 'package:products/src/mediators/paging/products_paging_controller.dart'
    as _i840;
import 'package:products/src/ui/screens/products_list/viewmodels/products_list_viewmodel.dart'
    as _i302;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of products-scope dependencies inside of GetIt
  _i174.GetIt initProductsScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'products',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i494.ProductsRemoteDataSource>(
            () => _i494.ProductsRemoteDataSource(gh<_i361.Dio>()));
        gh.lazySingleton<_i306.ProductsLocalDataSource>(() =>
            _i57.ProductsLocalDataSourceImpl(
                gh<_i458.ObjectBoxProductsStore>()));
        gh.lazySingleton<_i932.ProductsRepository>(
            () => _i440.ProductsRepositoryImpl(
                  gh<_i494.ProductsRemoteDataSource>(),
                  gh<_i306.ProductsLocalDataSource>(),
                ));
      },
    );
  }

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
    final productsModule = _$ProductsModule();
    await gh.lazySingletonAsync<_i497.Directory>(
      () => productsModule.provideDocumentsDirectory(),
      instanceName: 'ProductsDocumentsDirectory',
      preResolve: true,
    );
    gh.lazySingleton<_i458.ObjectBoxProductsStore>(() =>
        _i458.ObjectBoxProductsStore(
            gh<_i497.Directory>(instanceName: 'ProductsDocumentsDirectory')));
    return this;
  }

// initializes the registration of productsPaging-scope dependencies inside of GetIt
  _i174.GetIt initProductsPagingScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'productsPaging',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i840.ProductsPagingController>(() =>
            _i840.ProductsPagingController(gh<_i932.ProductsRepository>()));
      },
    );
  }

// initializes the registration of productsList-scope dependencies inside of GetIt
  _i174.GetIt initProductsListScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'productsList',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i302.ProductsListViewModel>(() =>
            _i302.ProductsListViewModel(gh<_i840.ProductsPagingController>()));
      },
    );
  }
}

class _$ProductsModule extends _i385.ProductsModule {}
