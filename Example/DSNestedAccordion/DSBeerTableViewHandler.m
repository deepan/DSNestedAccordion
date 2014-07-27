#import <DSNestedAccordion/DSCellPath.h>
#import "DSBeerTableViewHandler.h"
#import "DSCellWithLabel.h"
#import "DSBeerFlavor.h"
#import "DSNotableBeerStyle.h"

@implementation DSBeerTableViewHandler {
    DSBeers *_beers;
}

- (id)initWithBeers:(DSBeers *)beers {
    self = [super init];
    if(self){
        _beers = beers;
    }
    return self;
}

- (NSInteger)noOfRowsInRootLevel {
    return _beers.allFlavors.count;
}

- (NSInteger)tableView:(UITableView *)view noOfChildRowsForCellAtPath:(DSCellPath *)path {
    switch (path.levelIndexes.count) {
        case 1:
            return [self noOfBeerStylesForFlavorAtIndex:[path.levelIndexes[0] integerValue]];
        case 2:
            return [self noOfNotableBeerStylesForStyleAtIndex:[path.levelIndexes[1] integerValue] withFlavorAtIndex:[path.levelIndexes[0] integerValue]];
        default:
            0;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForPath:(DSCellPath *)path {
    switch (path.levelIndexes.count) {
        case 1:
            return [self tableView:tableView cellForBeerFlavorAtIndex:[path.levelIndexes[0] integerValue]];
        case 2:
            return [self tableView:tableView cellForBeerStyleAtIndex:[path.levelIndexes[1] integerValue] withFlavorWithIndex:[path.levelIndexes[0] integerValue]];
        default:
            return [self tableView:tableView cellForNotableBeerStyleAtIndex:[path.levelIndexes[2] integerValue] ofStyleWithIndex:[path.levelIndexes[1] integerValue] withFlavorWithIndex:[path.levelIndexes[0] integerValue]];
    }
}

- (NSInteger)noOfBeerStylesForFlavorAtIndex:(NSInteger)flavorIndex {
    return [_beers flavorAtIndex:flavorIndex].styles.count;
}


- (NSInteger)noOfNotableBeerStylesForStyleAtIndex:(NSInteger)styleIndex withFlavorAtIndex:(NSInteger)flavorIndex {
    return [_beers styleAtIndex: styleIndex withFlavorAtIndex: flavorIndex].notableStyles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForBeerFlavorAtIndex:(NSInteger)flavorIndex {
    DSCellWithLabel *cellWithLabel = [tableView dequeueReusableCellWithIdentifier:@"DS_FLAVOR_CELL"];
    [cellWithLabel render:[_beers flavorAtIndex:flavorIndex].name];
    return cellWithLabel;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForBeerStyleAtIndex:(NSInteger)styleIndex withFlavorWithIndex:(NSInteger)flavorIndex {
    DSCellWithLabel *cellWithLabel = [tableView dequeueReusableCellWithIdentifier:@"DS_STYLE_CELL"];
    [cellWithLabel render:[_beers styleAtIndex: styleIndex withFlavorAtIndex: flavorIndex].name];
    return cellWithLabel;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForNotableBeerStyleAtIndex:(NSInteger)notableStyleIndex ofStyleWithIndex:(NSInteger)styleIndex withFlavorWithIndex:(NSInteger)flavorIndex {
    DSCellWithLabel *cellWithLabel = [tableView dequeueReusableCellWithIdentifier:@"DS_NOTABLE_STYLE_CELL"];
    [cellWithLabel render:[_beers notableStyleAtIndex: notableStyleIndex withStyleAtIndex: styleIndex withFlavorAtIndex: flavorIndex].name];
    return cellWithLabel;
}

#pragma fix for separators bug in iOS 7
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];

    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
}


@end