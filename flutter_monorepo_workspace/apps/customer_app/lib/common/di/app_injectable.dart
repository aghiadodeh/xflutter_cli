// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'app_injectable.config.dart';

/// manage dependencies
@InjectableInit()
Future<void> configureAppDependencies({Environment? environment}) async {
  await GetIt.instance.init(environment: environment?.name);
}
