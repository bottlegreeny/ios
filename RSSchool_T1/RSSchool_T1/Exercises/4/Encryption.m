#import "Encryption.h"

@implementation Encryption

- (NSString *)encryption:(NSString *)string {
    NSString *stringToEncrypt = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSMutableArray *arrayToEncrypt = [[NSMutableArray alloc] initWithCapacity:[stringToEncrypt length]];
    NSInteger rowsCount = floor(sqrt([stringToEncrypt length]));
    NSInteger cellsCount = ceil(sqrt([stringToEncrypt length]));
    NSMutableArray *twoDimArray = [[NSMutableArray alloc] initWithCapacity:rowsCount];
    NSInteger j = 0;
    
    if ([stringToEncrypt length]>81){
        @throw [NSException exceptionWithName:@"The number of elements in the message is more the 81"
                                       reason:@"Can't perform the operation due to restrictions on the number of symbols within the message"
                                     userInfo:nil];
    }else{
        for (int i=0; i < [stringToEncrypt length]; i++) {
            NSString *oneChar  = [NSString stringWithFormat:@"%c", [stringToEncrypt characterAtIndex:i]];
            [arrayToEncrypt addObject:oneChar];
        }
        if(!((rowsCount*cellsCount)>=[arrayToEncrypt count])){
            if(rowsCount>cellsCount){
                rowsCount++;
            }else{
                rowsCount++;
            }
        }
        if(cellsCount==rowsCount)
        {
            for(int i=0;i<rowsCount;i++){
                j=i;
                for(int i=0;i<rowsCount;i++){
                    if(j<[stringToEncrypt length]){
                        [twoDimArray addObject:[arrayToEncrypt objectAtIndex:j]];
                        j+=cellsCount;
                    }
                }
                [twoDimArray addObject:@" "];
            }
        }else{
            for(int i=0;i<=rowsCount;i++){
                j=i;
                for(int i=0;i<rowsCount;i++){
                    if(j<[stringToEncrypt length]){
                        [twoDimArray addObject:[arrayToEncrypt objectAtIndex:j]];
                        j+=cellsCount;
                    }
                }
                [twoDimArray addObject:@" "];
            }
        }
    }
    NSMutableString *resultOfEncryption = [[NSMutableString alloc] init];
    [twoDimArray removeLastObject];
    for (NSObject * obj in twoDimArray){
        [resultOfEncryption appendString:[obj description]];
    }
    return resultOfEncryption;
}
@end
