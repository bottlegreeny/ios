//
//  EncryptionViewController.m
//  RSSchool_T1
//
//  Created by Kate Bend on 3/24/19.
//  Copyright © 2019 Catalina Home. All rights reserved.
//

#import "EncryptionViewController.h"
#import "Encryption.h"

@interface EncryptionViewController ()
@property (retain, nonatomic) IBOutlet UITextField *textFieldForStringToEncrypt;
@property (retain, nonatomic) IBOutlet UILabel *labelWithTheEncryptedText;
@property (retain, nonatomic) Encryption *encryption;
@end

@implementation EncryptionViewController

- (void)viewDidLoad {
    _encryption = [Encryption new];
    [super viewDidLoad];
    
}

- (IBAction)encrypt:(id)sender {
    _labelWithTheEncryptedText.text = [_encryption encryption: _textFieldForStringToEncrypt.text];
}


- (void)dealloc {
    [_textFieldForStringToEncrypt release];
    [_labelWithTheEncryptedText release];
    [super dealloc];
}
@end
