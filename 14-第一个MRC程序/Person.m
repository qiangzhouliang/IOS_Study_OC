//
//  Person.m
//  14-第一个MRC程序
//
//  Created by swan on 2024/8/24.
//

#import "Person.h"

@implementation Person

/// 只要这个方法被执行了，就代表当前这个对象被回收了。
- (void)dealloc{
    NSLog(@"名字叫做 %@ 的人挂了。", _name);
    
    [super dealloc];
}


- (void)sayHi {
    NSLog(@"大家好，才是真的好");
}

@end
