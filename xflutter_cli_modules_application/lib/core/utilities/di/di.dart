// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:get_it/get_it.dart';

/// create a global class instance inside [GetIt]
void putInstance<T extends Object>(T instance, {String? instanceName}) {
  try {
    GetIt.I.registerLazySingleton<T>(() => instance, instanceName: instanceName);
  } catch (_) {
    /// avoid register more than one time.
  }
}

/// get the global instance from [GetIt]
T findInstance<T extends Object>({String? instanceName}) {
  return GetIt.I.get<T>(instanceName: instanceName);
}

/// remove instance instance from [GetIt]
Future<void> destroyInstance<T extends Object>({String? instanceName}) async {
  if (isRegistered<T>(instanceName: instanceName)) {
    await GetIt.I.unregister<T>(instanceName: instanceName);
  }
}

/// check if instance already registered inside [GetIt]
bool isRegistered<T extends Object>({String? instanceName}) {
  return GetIt.I.isRegistered<T>(instanceName: instanceName);
}

/// if instance isRegistered => return the Registered instance
///
/// if instance is not registered => return `null`
T? findInstanceOrNull<T extends Object>({String? instanceName}) {
  if (isRegistered<T>(instanceName: instanceName)) {
    return GetIt.I.get<T>(instanceName: instanceName);
  } else {
    return null;
  }
}
