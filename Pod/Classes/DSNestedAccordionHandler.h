#import <Foundation/Foundation.h>

@class DSCellPath;

@interface DSNestedAccordionHandler : NSObject <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, weak) UITableView *tableView;

- (void)reload;

- (void)closeOpenCells;

- (void)tableView:(UITableView *)tableView toggleAtIndexPath:(NSIndexPath *)indexPath;

- (NSInteger)noOfRowsInRootLevel;

- (NSInteger)tableView:(UITableView *)view noOfChildRowsForCellAtPath:(DSCellPath *)path;

- (CGFloat)tableView:(UITableView *)tableView heightForCellAtPath:(DSCellPath *)path;

- (UITableViewCell *)tableView:(UITableView *)view cellForPath:(DSCellPath *)path;

@end
