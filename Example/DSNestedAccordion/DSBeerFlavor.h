#import <Foundation/Foundation.h>
#import "DSBeerStyle.h"

@interface DSBeerFlavor : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *styles;

- (instancetype)initWithName:(NSString *)name styles:(NSArray *)styles;

+ (instancetype)flavorWithName:(NSString *)name styles:(NSArray *)styles;

- (DSBeerStyle *)styleAtIndex:(NSInteger)index;

@end