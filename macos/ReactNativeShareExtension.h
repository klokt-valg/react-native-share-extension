#import <Cocoa/Cocoa.h>
#import "React/RCTBridgeModule.h"

@interface ReactNativeShareExtension : NSViewController<RCTBridgeModule>
- (NSView*) shareView;
@end
