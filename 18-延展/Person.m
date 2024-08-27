//
//  Person.m
//  18-延展
//
//  Created by swan on 2024/8/26.
//

#import "Person.h"
#import "Person+swan.h"

@implementation Person

-(void)dealloc{
    NSLog(@"Person dealloc");
}

- (void)sayHi {
    NSLog(@"大家好");
}

- (void)sleep {
    NSLog(@"我睡着了");
}

- (void)run {
    NSLog(@"起来去跑步");
}

@end
