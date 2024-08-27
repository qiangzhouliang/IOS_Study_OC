//
//  Person.m
//  06-对象作为类的属性
//
//  Created by swan on 2024/8/23.
//

#import "Person.h"

@implementation Person

- (void)sayHi {
    NSLog(@"大家好！我是%@，我%d岁了",_name,_age);
}

@end
