#import <UIKit/UIKit.h>

@interface DSCellWithLabel : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;

- (void)render:(NSString *)text;
@end
