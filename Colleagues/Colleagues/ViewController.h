//
//  ViewController.h
//  Colleagues
//
//  Created by Ahmed Elesdody on 3/6/20.
//  Copyright © 2020 Ahmed Elesdody. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Colleague.h"
@interface ViewController : UIViewController
{
    NSMutableArray *colleageus;
}
@property int current;
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *number;
- (IBAction)next:(UIButton *)sender;
- (IBAction)prev:(UIButton *)sender;

@end

