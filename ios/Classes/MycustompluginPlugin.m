#import "MycustompluginPlugin.h"
#if __has_include(<mycustomplugin/mycustomplugin-Swift.h>)
#import <mycustomplugin/mycustomplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mycustomplugin-Swift.h"
#endif

@implementation MycustompluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMycustompluginPlugin registerWithRegistrar:registrar];
}
@end
