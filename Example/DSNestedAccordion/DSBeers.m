#import "DSBeers.h"
#import "DSBeerFlavor.h"
#import "DSBeerStyle.h"
#import "DSNotableBeerStyle.h"

@implementation DSBeers {

}

-(instancetype)init {
    self = [super init];
    if(self){
        self.allFlavors = [self flavorsFrom:@[@{@"name" : @"CRISP",
                                                @"styles" : @[@{@"name" : @"Delicate fruit",
                                                                @"notableStyles" : @[@"Cream Ale",
                                                                                     @"English Blond Ale",
                                                                                     @"American Blond Ale",
                                                                                     @"Wheat Ale",
                                                                                     @"Kölsch"]
                                                              },
                                                              @{@"name" : @"Malt-accented",
                                                                @"notableStyles" : @[@"Pale Lager",
                                                                                     @"Helles Lager",
                                                                                     @"Amber Lager",
                                                                                     @"Vienna Lager",
                                                                                     @"Märzen/ Oktoberfest",
                                                                                     @"Helles Bock"]
                                                              },
                                                              @{@"name" : @"Brisk hoppiness",
                                                                @"notableStyles" : @[@"Pilsner",
                                                                                     @"Kellerbier/ Zwickelbier",
                                                                                     @"Hoppy Lager/ India Pale Lager",
                                                                                     @"Imperial Pilsner"]
                                                              }]
                                              },
                                              @{@"name" : @"HOP",
                                                @"styles" : @[@{@"name" : @"Earthy and dry",
                                                                @"notableStyles" : @[@"Ordinary Bitter",
                                                                                     @"English Pale Ale",
                                                                                     @"English India Pale Ale",
                                                                                     @"Belgian IPA"]
                                                              },
                                                              @{@"name" : @"Malty backbone",
                                                                @"notableStyles" : @[@"California Common",
                                                                                     @"American Amber Ale",
                                                                                     @"American Imperial Red Ale",
                                                                                     @"American Barleywine"]
                                                              },
                                                              @{@"name" : @"Bold, herbal and citric",
                                                                @"notableStyles" : @[@"American Pale Ale ",
                                                                                     @"American Fresh Hop Ale",
                                                                                     @"American India Pale Ale",
                                                                                     @"American Imperial IPA"]
                                                              }]
                                              },
                                              @{@"name" : @"MALT",
                                                @"styles" : @[@{@"name" : @"Toasty and nutty",
                                                                @"notableStyles" : @[@"English Mild",
                                                                                     @"Dark Lager",
                                                                                     @"Dunkel Lager",
                                                                                     @"English Brown Ale",
                                                                                     @"Düsseldorf Alt",
                                                                                     @"Dunkles Bock",
                                                                                     @"Doppelbock",
                                                                                     @"Eisbock"]
                                                              },
                                                              @{@"name" : @"Fruit and toffee",
                                                                @"notableStyles" : @[@"Best Bitter",
                                                                                     @"Scottish Ale",
                                                                                     @"Irish Red Ale",
                                                                                     @"Biére de Garde",
                                                                                     @"Belgian Pale Ale",
                                                                                     @"Extra Special Bitter ",
                                                                                     @"English Strong Ale",
                                                                                     @"Wee Heavy/ Scotch Ale",
                                                                                     @"Wheatwine",
                                                                                     @"English Barleywine"]
                                                              }]
                                              },
                                              @{@"name" : @"ROAST",
                                                @"styles" : @[@{@"name" : @"Soft and silky",
                                                                @"notableStyles" : @[@"Schwarzbier",
                                                                                     @"Brown Porter",
                                                                                     @"Sweet Stout",
                                                                                     @"Oatmeal Stout",
                                                                                     @"Imperial Brown Ale",
                                                                                     @"Imperial Porter",
                                                                                     @"Foreign Export Stout",
                                                                                     @"Belgian Stout"]
                                                              },
                                                              @{@"name" : @"Dark and dry",
                                                                @"notableStyles" : @[@"Dry Stout",
                                                                                     @"Black IPA",
                                                                                     @"American Brown Ale",
                                                                                     @"Robust Porter",
                                                                                     @"American Stout",
                                                                                     @"Imperial Stout"]
                                                              }]
                                              },
                                              @{@"name" : @"SMOKE",
                                                @"styles" : @[@{@"name" : @"Subdued smolder",
                                                                @"notableStyles" : @[@"Smoked Beer",
                                                                                     @"Steinbrau",
                                                                                     @"Smoked Porter"]
                                                              },
                                                              @{@"name" : @"Spicy and meaty",
                                                                @"notableStyles" : @[@"Rauchbier"]
                                                              }]
                                              },
                                              @{@"name" : @"FRUIT & SPICE",
                                                @"styles" : @[@{@"name" : @"Bright",
                                                                @"notableStyles" : @[@"Kristalweizen",
                                                                                     @"Witbier",
                                                                                     @"Hefeweizen",
                                                                                     @"Belgian Blond Ale",
                                                                                     @"Saison",
                                                                                     @"Gruit Ale",
                                                                                     @"Belgian Strong Blond Ale",
                                                                                     @"Belgian Strong Pale Ale ",
                                                                                     @"Tripel"]
                                                              },
                                                              @{@"name" : @"Dark",
                                                                @"notableStyles" : @[@"Dunkelweizen",
                                                                                     @"Belgian Dark Ale",
                                                                                     @"Dubbel",
                                                                                     @"Belgian Strong Dark Ale",
                                                                                     @"Weizenbock",
                                                                                     @"Quadruple"]
                                                              }]
                                              },
                                              @{@"name" : @"TART & FUNKY",
                                                @"styles" : @[@{@"name" : @"Delicate",
                                                                @"notableStyles" : @[@"Berliner Weissbier",
                                                                                     @"Gose",
                                                                                     @"Faro"]
                                                              },
                                                              @{@"name" : @"Fruity and vinous",
                                                                @"notableStyles" : @[@"Flanders Oud Bruin",
                                                                                     @"Flanders Red Ale",
                                                                                     @"Wild Ale ",
                                                                                     @"Traditional Fruit Lambic"]
                                                              },
                                                              @{@"name" : @"Earthy",
                                                                @"notableStyles" : @[@"Saison",
                                                                                     @"Wild Ale",
                                                                                     @"Gueuze Lambic",
                                                                                     @"Traditional Unblended Lambic"]
                                                              }]
                                              },
                                            ]];
        }
    return self;
}

-(NSArray *) flavorsFrom: (NSArray *) data{
    NSMutableArray *flavors = [NSMutableArray array];
    [data enumerateObjectsUsingBlock:^(NSDictionary * flavor, NSUInteger idx, BOOL *stop) {
        [flavors addObject:[self flavorFrom:flavor]];
    }];
    return flavors;
}

-(DSBeerFlavor *) flavorFrom:(NSDictionary *) data{
    NSMutableArray *styles = [NSMutableArray array];
    [(data[@"styles"]) enumerateObjectsUsingBlock:^(NSDictionary *styleData, NSUInteger idx, BOOL *stop) {
        [styles addObject:[self styleFrom:styleData]];
    }];
    return [DSBeerFlavor flavorWithName:data[@"name"] styles:styles];
}

-(DSBeerStyle *) styleFrom:(NSDictionary *) data{
    NSMutableArray *notableStyles = [NSMutableArray array];
    [(data[@"notableStyles"]) enumerateObjectsUsingBlock:^(NSString *notableStyleName, NSUInteger idx, BOOL *stop) {
        [notableStyles addObject:[DSNotableBeerStyle styleWithName:notableStyleName]];
    }];
    return [DSBeerStyle styleWithName:data[@"name"] notableStyles:notableStyles];
}


- (DSBeerFlavor *)flavorAtIndex:(NSInteger)index {
    return self.allFlavors[(NSUInteger) index];
}

- (DSBeerStyle *)styleAtIndex:(NSInteger)styleIndex withFlavorAtIndex:(NSInteger)flavorIndex {
    return [[self flavorAtIndex:flavorIndex] styleAtIndex:styleIndex];
}

- (DSNotableBeerStyle *)notableStyleAtIndex:(NSInteger)notableStyleIndex withStyleAtIndex:(NSInteger)styleIndex withFlavorAtIndex:(NSInteger)flavorIndex {
    return [[self styleAtIndex:styleIndex withFlavorAtIndex:flavorIndex] notableStyleAtIndex: notableStyleIndex];
}
@end