import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'apple_pay_custom_method_channel.dart';

abstract class ApplePayCustomPlatform extends PlatformInterface {
  /// Constructs a ApplePayCustomPlatform.
  ApplePayCustomPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApplePayCustomPlatform _instance = MethodChannelApplePayCustom();

  /// The default instance of [ApplePayCustomPlatform] to use.
  ///
  /// Defaults to [MethodChannelApplePayCustom].
  static ApplePayCustomPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApplePayCustomPlatform] when
  /// they register themselves.
  static set instance(ApplePayCustomPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
