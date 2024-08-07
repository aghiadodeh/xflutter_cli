// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:io';

/// fix network issue on Android 7.0
class AppHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
