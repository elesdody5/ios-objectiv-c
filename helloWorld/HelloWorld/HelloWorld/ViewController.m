//
//  ViewController.m
//  HelloWorld
//
//  Created by Ahmed Elesdody on 3/5/20.
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


- (IBAction)button:(id)sender {
    [self.label setText:@"Hello my first app"];
}
@end
