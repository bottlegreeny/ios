#import "Diagonal.h"

@implementation Diagonal

- (instancetype)init
{
    self = [super init];
    if (self) {
        _arrayToAdd = [NSArray new];
        _diagonalDifference = [NSNumber new];
    }
    return self;
}

- (void) dealloc {
    [_arrayToAdd release];
    [_diagonalDifference release];
    [super dealloc];
}
- (NSNumber*) diagonalDifference:(NSArray*)array {
    NSMutableArray *arrayToAdd = [[NSMutableArray alloc] init];
    NSMutableArray *twoDimArray = [[NSMutableArray alloc] init];
    for (NSString *stringRowOfNumbers in array){
        NSArray *row = [stringRowOfNumbers componentsSeparatedByString:@
                        " "];
        for (NSString *rowComponent in row){
            [arrayToAdd addObject:[NSNumber numberWithInt:[rowComponent intValue]]];
        }
        _arrayToAdd = [arrayToAdd copy];
        [twoDimArray addObject: _arrayToAdd];
        [arrayToAdd removeAllObjects];
    }
    if ([twoDimArray count]>10){
        @throw [NSException exceptionWithName:@"The number of elements in your matrix is more the 100"
                                       reason:@"Can't perform the operation due to restrictions on the number of elements within the matrix"
                                     userInfo:nil];
        
    }else{
        int d1 = 0;
        int d2 = 0;
        for (int a = 0; a < [array count]; a++)
        {
            for (int b = 0; b < [array count]; b++)
            {
                if (a == b)
                    d1 += [[[twoDimArray objectAtIndex:a] objectAtIndex:b] intValue];
                if (a == [array count] - b - 1)
                    d2 += [[[twoDimArray objectAtIndex:a] objectAtIndex:b] intValue];
            }
        }
        _diagonalDifference = [NSNumber numberWithInt: abs(d1-d2)];
    }
    return _diagonalDifference;
}

@end
