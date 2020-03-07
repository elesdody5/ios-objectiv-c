//
//  ViewController.m
//  CopyingText
//
//  Created by Ahmed Elesdody on 3/6/20.
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


- (IBAction)button:(UIButton *)sender {
    NSString *text = [self.textField text];
    [self.label setText:text];
}
@end
