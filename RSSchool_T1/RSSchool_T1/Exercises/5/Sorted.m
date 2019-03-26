#import "Sorted.h"

@implementation ResultObject
@end

@implementation Sorted

- (ResultObject*)sorted:(NSString*)string {
    ResultObject *value = [ResultObject new];
    NSArray *arrayToChange = [string componentsSeparatedByString: @" "];
    NSMutableArray *arrayToSort = [NSMutableArray new];
    int firstNumber;
    int secondNumber = 0;
    for (NSString *stringElement in arrayToChange){
        [arrayToSort addObject:[NSNumber numberWithInteger:[stringElement intValue]]];
    }
     NSMutableArray *tempArray = [NSMutableArray new];
     NSMutableArray *arrayToSwap = [NSMutableArray new];
    
    
    for (int i = 0; i < [arrayToSort count]; i++) {
        if (i < ([arrayToSort count] - 1) && [[arrayToSort objectAtIndex:i] intValue] > [[arrayToSort objectAtIndex:(i + 1)] intValue]){
            [tempArray addObject: [arrayToSort objectAtIndex:i]];
//            firstNumber = i+1;
//            [arrayToSort removeObjectAtIndex:i];
        }
        for (int j = 0; j < [arrayToSort count] - i; j++) {
            if (j < ([arrayToSort count] - 1) && [[arrayToSort objectAtIndex:j] intValue] > [[arrayToSort objectAtIndex:(j + 1)] intValue]){
                [tempArray addObject: [arrayToSort objectAtIndex:j+1]];
                [arrayToSort removeObjectAtIndex:j+1];
                secondNumber = j+1;
            }
        }
    }
     for (int i = 0; i < [tempArray count]; i++) {
        
        for (int j = 0; j < [tempArray count] - i; j++) {
            
            if (j < ([tempArray count] - 1) && [[tempArray objectAtIndex:j] intValue] > [[tempArray objectAtIndex:(j + 1)] intValue]){
                int temp = [[tempArray objectAtIndex:j] intValue];
                [tempArray replaceObjectAtIndex:j withObject:[tempArray objectAtIndex:(j + 1)]];
                [tempArray replaceObjectAtIndex:(j + 1) withObject:[NSNumber numberWithInt:temp]];
            }
        }
    }
    
    firstNumber = [tempArray count] + secondNumber;
    
    if ([tempArray count] < 2){
        value.status = YES;
        value.detail = [NSString stringWithFormat: @"swap %i %i", secondNumber, firstNumber];
    }else{
        value.status = YES;
        value.detail = [NSString stringWithFormat: @"reverse %i %i",secondNumber, firstNumber];;
    }
    return value;
}

@end
