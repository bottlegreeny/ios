#import "KidnapperNote.h"

@implementation KidnapperNote
- (BOOL)checkMagazine:(NSString *)magaine note:(NSString *)note {
    NSString *magaineStringOfLowerCase = [magaine lowercaseString];
    NSString *noteStringOfLowerCase = [note lowercaseString];
    
    NSArray *arrayOfMagazineStrings = [magaineStringOfLowerCase componentsSeparatedByString:@" "];
    NSArray *arrayOfNoteStrings = [noteStringOfLowerCase componentsSeparatedByString:@" "];
    
     _setOfMagazineStrings = [[NSCountedSet alloc] initWithArray:arrayOfMagazineStrings];
     _setOfNoteStrings = [[NSCountedSet alloc] initWithArray:arrayOfNoteStrings];
    
    return [_setOfNoteStrings isSubsetOfSet:_setOfMagazineStrings];
}

- (void) dealloc {
    [_setOfMagazineStrings release];
    [_setOfNoteStrings release];
    [super dealloc];
}
@end
