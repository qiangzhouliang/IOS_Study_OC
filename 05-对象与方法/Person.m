//
//  Person.m
//  05-对象与方法
//
//  Created by swan on 2024/8/23.
//

#import "Person.h"

@implementation Person

- (void)sayHi {
    NSLog(@"大家好！");
}

- (void)test:(nonnull Dog *)dog {
    [dog shout];
}

- (nonnull Dog *)test1 {
    Dog *wangCai = [Dog new];
    wangCai->_name = @"旺财";
    wangCai->_color = @"黄色";
    
    return wangCai;
}

@end
