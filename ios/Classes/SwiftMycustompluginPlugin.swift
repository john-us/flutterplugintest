import Flutter
import UIKit

public class SwiftMycustompluginPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "mycustomplugin", binaryMessenger: registrar.messenger())
    let instance = SwiftMycustompluginPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if(call.method.elementsEqual("showToast")){
          let args=call.arguments as? String
          UIAlertView(title: "", message: args, delegate: nil, cancelButtonTitle: "OK").show()
          result(true)
      }else{
    result("iOS " + UIDevice.current.systemVersion)
      }
  }
}
