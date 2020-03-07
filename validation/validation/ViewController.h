//
//  ViewController.h
//  validation
//
//  Created by Ahmed Elesdody on 3/7/20.
//  Copyright © 2020 Ahmed Elesdody. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *editText;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)isString:(UIButton *)sender;
- (IBAction)isNum:(UIButton *)sender;

@end

