//
//  Colleague.h
//  Colleagues
//
//  Created by Ahmed Elesdody on 3/6/20.
//  Copyright © 2020 Ahmed Elesdody. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Colleague : NSObject
@property NSString *num;
@property NSString *name;
-(id)initwithName:(NSString*) name andNumber: (NSString*)num;
@end


