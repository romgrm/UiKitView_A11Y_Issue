import Flutter
import UIKit

public class ApplePayCustomPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "apple_pay_custom", binaryMessenger: registrar.messenger())
    let instance = ApplePayCustomPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
      let factory = FLNativeViewFactory(messenger: registrar.messenger())
      registrar.register(factory, withId: "apple_pay_custom")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
