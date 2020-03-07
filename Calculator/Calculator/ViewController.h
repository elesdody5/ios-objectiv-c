//
//  ViewController.h
//  Calculator
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 Elesdody. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property double num1;
@property double num2;
@property int currentNum;
@property NSString * number;
@property NSString* op;
@property BOOL done;
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)num:(UIButton *)sender;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)operation:(UIButton *)sender;
- (IBAction)equals:(UIButton *)sender;

@end

