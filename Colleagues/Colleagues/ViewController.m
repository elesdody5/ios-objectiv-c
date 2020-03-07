//
//  ViewController.m
//  Colleagues
//
//  Created by Ahmed Elesdody on 3/6/20.
//  Copyright © 2020 Ahmed Elesdody. All rights reserved.
//

#import "ViewController.h"
#import"Colleague.h"

@interface ViewController ()
@end
void display(Colleague * c,UILabel * name,UILabel *num);
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    colleageus =[NSMutableArray new];
    Colleague *c1 =[Colleague alloc];
    c1=[c1 initwithName:@"Ahmed" andNumber:@"1"];
    [colleageus addObject:c1];
    Colleague *c2 =[Colleague alloc];
    c2=[c2 initwithName:@"mohamed" andNumber:@"2"];
    [colleageus addObject:c2];
    Colleague *c3 =[Colleague alloc];
    c3=[c3 initwithName:@"Ibrahime" andNumber:@"3"];
    [colleageus addObject:c3];Colleague *c4 =[Colleague alloc];
    c4=[c4 initwithName:@"Ali" andNumber:@"4"];
    [colleageus addObject:c4];
    display(c1 ,self.name,self.number);
    self.current=0;
    
}


- (IBAction)next:(UIButton *)sender {
    if(self.current<3)
        self.current++;
    else if(self.current==3)
        self.current=0;
    Colleague *c = [colleageus objectAtIndex:(self.current)];
    display(c,self.name,self.number);
    
    
    
}

- (IBAction)prev:(UIButton *)sender {
    if(self.current>0)
        self.current--;
    else if(self.current==0)
        self.current=3;
    Colleague *c = [colleageus objectAtIndex:(self.current)];
    display(c,self.name,self.number);
}

void display (Colleague* c,UILabel *name,UILabel *num){
    [name setText:c.name];
    [num setText:c.num];
}
@end
