//
//  Person.m
//  24-单例模式
//
//  Created by swan on 2024/8/27.
//

#import "Person.h"

@implementation Person

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    // static : 修饰，不会被回收，如果有 将不在重新定义，直接拿来用
    static id instance = nil;
    if (instance == nil) {
        instance = [super allocWithZone:zone];
    }
    return instance;
}

+ (nonnull instancetype)sharedPerson {
    return [self new];
}

+ (nonnull instancetype)defaultPerson {
    return [self new];
}

@end
