#import <Foundation/Foundation.h>

@interface Diagonal : NSObject
@property (nonatomic, copy) NSArray *arrayToAdd;
@property (nonatomic, retain)NSNumber *diagonalDifference;
- (NSNumber*)diagonalDifference:(NSArray*)array;
@end
