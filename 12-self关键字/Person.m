//
//  Person.m
//  12-self关键字
//
//  Created by swan on 2024/8/23.
//

#import "Person.h"

@implementation Person

- (void)sayHi {
    NSString *_name = @"jack";
//    NSLog(@"_name = %@", _name);
    NSLog(@"_name = %@", self ->_name);
    
//    NSLog(@"我的名字叫%@ 我的年龄是 %d", _name, _age);
}

- (void)hehe{
    NSLog(@"hehe");
    // 调用当前这个对象的sayHi方法
    [self sayHi];
}

+ (void)sb{
    NSLog(@"self = %p", self);
}

@end
