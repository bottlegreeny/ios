#import "SummArray.h"

@interface SummArray(){
    NSInteger sum;
}
@end
@implementation SummArray

- (NSNumber*)summArray:(NSArray*)array {
    for (NSString *stringCharacter in array){
        sum += [stringCharacter intValue];
    }
    return [NSNumber numberWithInteger:sum];
}


@end
