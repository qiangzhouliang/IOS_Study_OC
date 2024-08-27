//
//  Person.m
//  15-内存管理的原则
//
//  Created by swan on 2024/8/24.
//

#import "Person.h"

@implementation Person

- (void)dealloc{
    NSLog(@"人挂了");
    
    [super dealloc];
}

@end
