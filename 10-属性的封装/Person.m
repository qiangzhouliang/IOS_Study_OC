//
//  Person.m
//  10-属性的封装
//
//  Created by swan on 2024/8/23.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)name{
    if ([name length] >= 2) {
        _name = name;
    } else {
        _name = @"无名";
    }
}


- (void)setAge:(int)age {
    if (age >= 0 && age <= 200) {
        _age = age;
    } else {
        _age = 18;
    }
}


- (void)sayHi{
    NSLog(@"我叫 %@，我的年龄是 %d",_name, _age);
}


- (nonnull NSString *)name {
    return _name;
}

- (int)age {
    return _age;
}

@end
