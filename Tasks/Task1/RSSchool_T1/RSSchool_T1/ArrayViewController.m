
//  ViewController.m
//  RSSchool_T1
//
//  Created by Kate Bend on 3/21/19.
//  Copyright © 2019 Catalina Home. All rights reserved.
//

#import "ArrayViewController.h"
#import "SummArray.h"

@interface ViewController ()
@property (retain, nonatomic) IBOutlet UILabel *elementsSum;
@property (retain, nonatomic) IBOutlet UITextField *textFieldForElements;
@property (retain, nonatomic) NSNumber *numberOfElements;
@property (retain, nonatomic) NSNumber *sumOfElements;
@property(retain, nonatomic) SummArray *summArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _summArray = [SummArray new];
}

- (IBAction)countTheSumOfElements:(id)sender {
    NSArray *arrayOfStringNumbers = [_textFieldForElements.text componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    _sumOfElements = [_summArray summArray: arrayOfStringNumbers];
    _numberOfElements = [NSNumber numberWithInteger:[arrayOfStringNumbers count]];
    
    
    _elementsSum.attributedText = [self attributedwithSum:_sumOfElements andWithCount: _numberOfElements];
    [_elementsSum sizeToFit];
}

- (NSAttributedString*)attributedwithSum: (NSNumber* ) sumToUseInString andWithCount: (NSNumber* ) countToUseInString{
    return [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"The sum of elements is: %@ \n and the number of elements is: %@", sumToUseInString, countToUseInString] attributes: @{NSForegroundColorAttributeName: UIColor.blueColor}];
    
}

- (void)dealloc {
    [_summArray release];
    [_textFieldForElements release];
    [_sumOfElements release];
    [_numberOfElements release];
    [_elementsSum release];
    [super dealloc];
}

@end
