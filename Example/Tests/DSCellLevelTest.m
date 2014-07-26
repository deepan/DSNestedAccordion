#import <DSNestedAccordion/DSCellPath.h>
#import "DSCellLevel.h"

SPEC_BEGIN(DSNestedAccordionSpec)

describe(@"Nested accordion cell", ^{
    it(@"should return level information given the index of cell", ^{

        DSCellLevel *cellLevel1 = [[DSCellLevel alloc] initWithCellCount:6 openCellIndex:-1 childLevel:nil];
        [[[cellLevel1 pathToCellAtIndex:5].levelIndexes should] equal:[NSArray arrayWithObjects:@5, nil]];


        DSCellLevel *cellLevel3 = [[DSCellLevel alloc] initWithCellCount:2 openCellIndex:-1 childLevel:nil];
        DSCellLevel *cellLevel2 = [[DSCellLevel alloc] initWithCellCount:4 openCellIndex:2 childLevel:cellLevel3];
        cellLevel1 = [[DSCellLevel alloc] initWithCellCount:6 openCellIndex:1 childLevel:cellLevel2];

        [[[cellLevel1 pathToCellAtIndex: 7].levelIndexes should] equal:[NSArray arrayWithObjects:@1, @3, nil]];

        [[[cellLevel1 pathToCellAtIndex: 6].levelIndexes should] equal:[NSArray arrayWithObjects:@1, @2, @1, nil]];

    });

    it(@"should return number of cells the levels have", ^{
        DSCellLevel *cellLevel3 = [[DSCellLevel alloc] initWithCellCount:2 openCellIndex:-1 childLevel:nil];
        DSCellLevel *cellLevel2 = [[DSCellLevel alloc] initWithCellCount:4 openCellIndex:2 childLevel:cellLevel3];
        DSCellLevel *cellLevel1 = [[DSCellLevel alloc] initWithCellCount:6 openCellIndex:1 childLevel:cellLevel2];

        [[@([cellLevel1 nestedCellCount]) should] equal:@12];
        [[@([cellLevel2 nestedCellCount]) should] equal:@6];
        [[@([cellLevel3 nestedCellCount]) should] equal:@2];

    });
});

SPEC_END