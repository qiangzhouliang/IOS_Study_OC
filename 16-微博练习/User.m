//
//  User.m
//  16-微博练习
//
//  Created by swan on 2024/8/25.
//

#import "User.h"

@implementation User

- (void)dealloc {
    NSLog(@"人挂了");
    [_nickName release];
    [_account release];
    
    [super dealloc];
}

@end
