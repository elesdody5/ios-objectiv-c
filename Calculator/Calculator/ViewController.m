//
//  ViewController.m
//  Calculator
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 Elesdody. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.number=@"";
}


- (IBAction)num:(UIButton *)sender {
    
    if(self.done==YES)
    {
        self.done=NO;
        [self.result setText:@""];
        self.num1=0;
        self.num2=0;
        self.currentNum=0;
        self.number=@"";
    }
    NSString * text=sender.titleLabel.text;
    self.number=[self.number  stringByAppendingString:text];
    [self.result setText:self.number];
    printf("%s",[self.number UTF8String]);
    
}



- (IBAction)clear:(UIButton *)sender {
    self.number=@"";
    [self.result setText:@""];
    self.num1=0;
    self.num2=0;
    self.currentNum=0;
}

- (IBAction)operation:(UIButton *)sender {
    [self setNumber];
    self.currentNum=1;
    self.op=sender.titleLabel.text;
    [self.result setText:sender.titleLabel.text];
    self.number=@"";
    self.done=NO;
    
}

- (IBAction)equals:(UIButton *)sender {
    if(!self.done){
    [self setNumber];
    double result ;
    if([self.op isEqual:@"+"])
        result = [self add];
    else if([self.op isEqual:@"-"])
        result =[self sub];
    else if([self.op isEqual:@"*"])
        result= [self mul];
    else result =[self div];
    
    [self.result setText:[NSString stringWithFormat:@"%.1f",result]];
    
    self.done=YES;
    self.number=[[self.result text] copy];
    printf("%s",[self.number UTF8String]);
    self.currentNum=0;
    }
    
}
-(void) setNumber{
    if(self.currentNum==0)
        self.num1 = [self.number doubleValue];
    else
        self.num2 = [self.number doubleValue];
    
}
-(int) add;
{
    printf("\n%d%d",self.num1,self.num2);
    return  self.num1+self.num2;
}
-(int) sub{
    return self.num1-self.num2;
}
-(int) mul{
    return self.num1*self.num2;
}
-(double) div
{
    if(self.num2!=0)
        return self.num1/self.num2;
    else
        return 0;
}

@end
