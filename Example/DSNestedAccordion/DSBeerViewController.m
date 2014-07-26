#import "DSBeerViewController.h"
#import "DSBeers.h"
#import "DSBeerTableViewHandler.h"

@implementation DSBeerViewController {
    DSNestedAccordionHandler *_beerTableViewHandler;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initializeBeerTableView];
    [_beerTableViewHandler reload];
}

- (void)initializeBeerTableView {
    _beerTableViewHandler = [[DSBeerTableViewHandler alloc] initWithBeers: [[DSBeers alloc] init]];
    self.beerTableView.dataSource = _beerTableViewHandler;
    self.beerTableView.delegate = _beerTableViewHandler;
    [self hideEmptyTableViewRows];
}

- (void)hideEmptyTableViewRows {
    self.beerTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

@end
