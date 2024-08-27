//
//  Microblog.m
//  16-微博练习
//
//  Created by swan on 2024/8/25.
//

#import "Microblog.h"

@implementation Microblog

- (void)dealloc {
    
    NSLog(@"web烧了");
    [_content release];
    [_imgURL release];
    [_user release];
    [_zhuanfaBlog release];
    [super dealloc];
}

@end
