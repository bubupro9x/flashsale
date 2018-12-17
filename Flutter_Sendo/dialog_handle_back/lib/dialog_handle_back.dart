import 'dart:async';

import 'package:flutter/services.dart';

class DialogHandleBack {
  static const MethodChannel _channel =
      const MethodChannel('dialog_handle_back');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
