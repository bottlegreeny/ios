//
//  PangramsViewController.m
//  RSSchool_T1
//
//  Created by Kate Bend on 3/23/19.
//  Copyright © 2019 Catalina Home. All rights reserved.
//

#import "PangramsViewController.h"
#import "Pangrams.h"

@interface PangramsViewController ()
@property (retain, nonatomic) IBOutlet UITextField *textFieldForTextToCheck;
@property (retain ,nonatomic) Pangrams *pangrams;
@property (retain, nonatomic) IBOutlet UILabel *pangramCheckResult;

@end

@implementation PangramsViewController

- (void)viewDidLoad {
    _pangrams = [Pangrams new];
    [super viewDidLoad];
}
- (IBAction)checkForPangrams:(id)sender {
    if ([_pangrams pangrams: _textFieldForTextToCheck.text]){
        _pangramCheckResult.text = @"Pangram";
    }else{
        _pangramCheckResult.text = @"No pangram";
    }
}


- (void)dealloc {
    [_textFieldForTextToCheck release];
    [_pangramCheckResult release];
    [super dealloc];
}



@end
