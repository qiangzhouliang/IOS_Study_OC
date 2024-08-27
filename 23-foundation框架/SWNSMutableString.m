//
//  SWNSMutableString.m
//  23-foundation框架
//
//  Created by swan on 2024/8/26.
//

#import "SWNSMutableString.h"
#import "LogUtil.h"

@implementation SWNSMutableString

- (void)demo {
    NSLog(@"demo");
    [self userNSMutableString];
}

- (void)userNSMutableString{
    NSMutableString *str = [NSMutableString string];
    
    [str appendString:@"Jack"]; // str  jack
    [str appendString:@"rose"]; // str  jackrose
    
    int age =  10;
    [str appendFormat:@"我今年%d岁了。", age];
    
    NSLog(str);
}

@end
