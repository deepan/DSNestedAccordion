#import "DSNotableBeerStyle.h"

@implementation DSNotableBeerStyle
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }

    return self;
}

+ (instancetype)styleWithName:(NSString *)name {
    return [[self alloc] initWithName:name];
}

@end