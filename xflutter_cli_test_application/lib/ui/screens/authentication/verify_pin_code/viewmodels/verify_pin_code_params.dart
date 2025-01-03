// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutterx_live_data/flutterx_live_data.dart';

class VerifyPinCodeParams {
  late final _code = MutableLiveData<String>(value: '');
  LiveData<String> get code => _code;

  /// emit new code
  void setCode(String value) {
    _code.postValue(value);
  }

  late final _result = LiveEvent<dynamic>();
  var phone = '';
  ObservableData<dynamic> get result => _result;

  /// emit new result
  void setResult(dynamic value) {
    _result.send(value);
  }
}
