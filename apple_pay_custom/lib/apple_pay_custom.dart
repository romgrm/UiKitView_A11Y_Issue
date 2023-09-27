
import 'apple_pay_custom_platform_interface.dart';

class ApplePayCustom {
  Future<String?> getPlatformVersion() {
    return ApplePayCustomPlatform.instance.getPlatformVersion();
  }
}
