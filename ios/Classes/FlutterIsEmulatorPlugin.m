#import "FlutterIsEmulatorPlugin.h"

#if TARGET_IPHONE_SIMULATOR
    BOOL IsSimulator = YES;
#else
    BOOL IsSimulator = NO;
#endif

@implementation FlutterIsEmulatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"g123k/flutter_is_emulator"
            binaryMessenger:[registrar messenger]];
  FlutterIsEmulatorPlugin* instance = [[FlutterIsEmulatorPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"isEmulatorOrSimulator" isEqualToString:call.method]) {
    result([NSNumber numberWithBool:IsSimulator]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
