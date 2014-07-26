#import "DSCellWithLabel.h"

@implementation DSCellWithLabel

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

-(void) render:(NSString *) text{
    self.label.text = text;
}

@end
