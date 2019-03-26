#import <Foundation/Foundation.h>

@interface Encryption : NSObject
@property (nonatomic, copy) NSArray *arrayToAdd;
- (NSString *)encryption:(NSString *)string;

@end
