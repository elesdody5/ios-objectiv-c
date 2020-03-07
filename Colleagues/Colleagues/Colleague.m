//
//  Colleague.m
//  Colleagues
//
//  Created by Ahmed Elesdody on 3/6/20.
//  Copyright © 2020 Ahmed Elesdody. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague
-(id)initwithName:(NSString *)name andNumber:(NSString*)num{
    self.num=num;
    self.name=name;
    return self;
    
}
@end
