#import <Foundation/Foundation.h>

@class DSBeerFlavor;
@class DSBeerStyle;
@class DSNotableBeerStyle;

@interface DSBeers : NSObject
@property (nonatomic, strong) NSArray *allFlavors;

- (DSBeerFlavor *)flavorAtIndex:(NSInteger)index;

- (DSBeerStyle *)styleAtIndex:(NSInteger)styleIndex withFlavorAtIndex:(NSInteger)flavorIndex;

- (DSNotableBeerStyle *)notableStyleAtIndex:(NSInteger)notableStyleIndex withStyleAtIndex:(NSInteger)styleIndex withFlavorAtIndex:(NSInteger)flavorIndex;
@end