//
//  DiagonalViewController.m
//  RSSchool_T1
//
//  Created by Kate Bend on 3/21/19.
//  Copyright © 2019 Catalina Home. All rights reserved.
//

#import "DiagonalViewController.h"
#import "Diagonal.h"

@interface DiagonalViewController ()
@property (retain, nonatomic) IBOutlet UITextField *textInputForMatrix;
@property (retain, nonatomic) IBOutlet UILabel *differenceLabel;
@property (retain, nonatomic)Diagonal *diagonal;

@end

@implementation DiagonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _diagonal = [Diagonal new];
}

- (IBAction)countTheDifference:(id)sender {
    NSArray *arrayOfStringNumbersRows = [_textInputForMatrix.text componentsSeparatedByString:@", "];
    _differenceLabel.text = [NSString stringWithFormat:@"The difference of matrix diagonals is: \n %@", [_diagonal diagonalDifference: arrayOfStringNumbersRows]];
    [_differenceLabel sizeToFit];
}


- (void)dealloc {
    [_textInputForMatrix release];
    [_differenceLabel release];
    [_diagonal release];
    [super dealloc];
}
@end
