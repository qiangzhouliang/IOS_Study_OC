//
//  Account.m
//  16-微博练习
//
//  Created by swan on 2024/8/25.
//

#import "Account.h"

@implementation Account

- (void)dealloc {
    NSLog(@"账号被毁了");
    [_userName release];
    [_password release];
    
    [super dealloc];
}
@end
