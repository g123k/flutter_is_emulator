import 'dart:async';

import 'package:flutter/services.dart';

class FlutterIsEmulator {
  static const MethodChannel _channel =
      const MethodChannel('g123k/flutter_is_emulator');

  static Future<bool> get isDeviceAnEmulatorOrASimulator async {
    final bool isEmulatorOrSimulator =
        await _channel.invokeMethod('isEmulatorOrSimulator');
    return isEmulatorOrSimulator;
  }
}
