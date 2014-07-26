#import <Foundation/Foundation.h>

@interface DSNotableBeerStyle : NSObject
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;

+ (instancetype)styleWithName:(NSString *)name;

@end