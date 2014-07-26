#import <Foundation/Foundation.h>

@class DSNotableBeerStyle;

@interface DSBeerStyle : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *notableStyles;

- (instancetype)initWithName:(NSString *)name notableStyles:(NSArray *)notableStyles;

+ (instancetype)styleWithName:(NSString *)name notableStyles:(NSArray *)notableStyles;

- (DSNotableBeerStyle *)notableStyleAtIndex:(NSInteger)index;

@end