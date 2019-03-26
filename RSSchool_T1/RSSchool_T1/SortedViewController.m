//
//  SortedViewController.m
//  RSSchool_T1
//
//  Created by Kate Bend on 3/24/19.
//  Copyright © 2019 Catalina Home. All rights reserved.
//

#import "SortedViewController.h"
#import "Sorted.h"

@interface SortedViewController ()

@property (retain, nonatomic) IBOutlet UITextField *textFieldForDigits;
@property (retain, nonatomic) IBOutlet UILabel *labelForResult;
@property (retain, nonatomic) Sorted *sorted;

@end

@implementation SortedViewController

- (void)viewDidLoad {
    _sorted = [Sorted new];
    [super viewDidLoad];
}

- (IBAction)sort:(id)sender {
    [_sorted sorted:_textFieldForDigits.text];
}


- (void)dealloc {
    [_textFieldForDigits release];
    [_labelForResult release];
    [super dealloc];
}
@end
