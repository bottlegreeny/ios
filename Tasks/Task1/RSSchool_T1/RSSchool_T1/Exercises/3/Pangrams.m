#import "Pangrams.h"

@implementation Pangrams
- (BOOL)pangrams:(NSString *)string {
    BOOL flag = YES;
    if(string.length >1000){
        @throw [NSException exceptionWithName:@"The number of symbols in line is more the 1000"
                                       reason:@"Can't perform the operation due to restrictions on the number of symbols within the line"
                                     userInfo:nil];
    }else{
        NSString *stringOfLowerCase = [string  lowercaseString];
        for(char c = 'a'; c<='z'; c++){
            if (![stringOfLowerCase containsString:[NSString stringWithFormat:@"%c", c]]){
                flag = NO;
            }
        }
    }
     return flag;
}
@end
