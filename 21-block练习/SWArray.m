//
//  SWArray.m
//  21-block与协议
//
//  Created by swan on 2024/8/26.
//

#import "SWArray.h"

@implementation SWArray

- (instancetype)init
{
    self = [super init];
    if (self) {
        for (int i = 1; i <= 10; i++) {
            _arr[i-1] = i * 10;
        }
    }
    return self;
}


- (void)bianLiWithBlock:(void(^)(int value))processBlock{
    for (int i = 0; i < 10; i++) {
        // 每遍历出来1个元素，方法自己自作主张的打印
        // 这个元素如何处理？方法内部确定吗？
        // 这个时候，就要将遍历出来的元素交给调用者去处理
        //也就是说，要让调用者自己写1段代码来处理遍历出来的元素.
        processBlock(_arr[i]);
//        NSLog(@"%d", _arr[i]);
    }
}
@end
