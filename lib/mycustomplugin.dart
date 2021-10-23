import 'dart:async';

import 'package:flutter/services.dart';

class Mycustomplugin {
  static const MethodChannel _channel = const MethodChannel('mycustomplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> showToast(String message) async {
    final bool result =
        await _channel.invokeMethod('showToast', message) ?? false;
    return result;
  }
}
