import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'apple_pay_custom_platform_interface.dart';

/// An implementation of [ApplePayCustomPlatform] that uses method channels.
class MethodChannelApplePayCustom extends ApplePayCustomPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('apple_pay_custom');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
