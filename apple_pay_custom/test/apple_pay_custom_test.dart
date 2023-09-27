import 'package:flutter_test/flutter_test.dart';
import 'package:apple_pay_custom/apple_pay_custom.dart';
import 'package:apple_pay_custom/apple_pay_custom_platform_interface.dart';
import 'package:apple_pay_custom/apple_pay_custom_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApplePayCustomPlatform
    with MockPlatformInterfaceMixin
    implements ApplePayCustomPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ApplePayCustomPlatform initialPlatform = ApplePayCustomPlatform.instance;

  test('$MethodChannelApplePayCustom is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApplePayCustom>());
  });

  test('getPlatformVersion', () async {
    ApplePayCustom applePayCustomPlugin = ApplePayCustom();
    MockApplePayCustomPlatform fakePlatform = MockApplePayCustomPlatform();
    ApplePayCustomPlatform.instance = fakePlatform;

    expect(await applePayCustomPlugin.getPlatformVersion(), '42');
  });
}
