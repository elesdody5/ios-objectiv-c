//
//  ViewController.h
//  CopyingText
//
//  Created by Ahmed Elesdody on 3/6/20.
//  Copyright © 2020 Ahmed Elesdody. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)button:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

