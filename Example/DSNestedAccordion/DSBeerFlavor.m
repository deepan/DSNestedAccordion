#import "DSBeerFlavor.h"

@implementation DSBeerFlavor
- (instancetype)initWithName:(NSString *)name styles:(NSArray *)styles {
    self = [super init];
    if (self) {
        self.name = name;
        self.styles = styles;
    }

    return self;
}

+ (instancetype)flavorWithName:(NSString *)name styles:(NSArray *)styles {
    return [[self alloc] initWithName:name styles:styles];
}

- (DSBeerStyle *)styleAtIndex:(NSInteger)index {
    return self.styles[(NSUInteger) index];
}

@end