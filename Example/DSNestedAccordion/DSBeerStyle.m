#import "DSBeerStyle.h"
#import "DSNotableBeerStyle.h"

@implementation DSBeerStyle
- (instancetype)initWithName:(NSString *)name notableStyles:(NSArray *)notableStyles {
    self = [super init];
    if (self) {
        self.name = name;
        self.notableStyles = notableStyles;
    }

    return self;
}

+ (instancetype)styleWithName:(NSString *)name notableStyles:(NSArray *)notableStyles {
    return [[self alloc] initWithName:name notableStyles:notableStyles];
}

- (DSNotableBeerStyle *)notableStyleAtIndex:(NSInteger)index {
    return self.notableStyles[(NSUInteger) index];
}

@end