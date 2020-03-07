//
//  ViewController.m
//  validation
//
//  Created by Ahmed Elesdody on 3/7/20.
//  Copyright © 2020 Ahmed Elesdody. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(BOOL) isNumber:(NSString*)newString{
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    BOOL isDecimal = [nf numberFromString:newString] != nil;
    return isDecimal;
}

- (IBAction)isString:(UIButton *)sender {
    NSString* text = [self.editText text];
    if(![self isNumber:text])
    {
        [self.label setText:@"This text is string"];
    }
    else
        [self.label setText:@"This text isn't string"];

}

- (IBAction)isNum:(UIButton *)sender {
    NSString* text = [self.editText text];
    if([self isNumber:text])
    {
        [self.label setText:@"This text is number"];
    }
    else
        [self.label setText:@"This text isn't number"];
}
@end
