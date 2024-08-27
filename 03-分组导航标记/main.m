/*
 1）.#pragma mark 分组名
    就会在导航条对应的位置显示1个标题.
 2) • #pragma mark -
    就会在导航条对应的位置显示1条水平分隔线
 3）.#pragma mark - 分组名
    就会在导航条对应的位置先产生1条水平分割线，再显示标题.！
 
 
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
- (void)run;
- (void)eat:(NSString *)foodName;
- (int)sum:(int) num1 :(int)num2;

@end

@implementation Person



- (void)run {
    NSLog(@"我是人，我在跑！");
}

- (void)eat:(NSString *)foodName {
    NSLog(@"我在吃%@", foodName);
}

- (int)sum:(int)num1 :(int)num2 {
    return num1 + num2;
}

@end

#pragma mark 狗狗类的声明
@interface Dog : NSObject

@end
#pragma mark 狗狗类的实现
@implementation Dog



@end

#pragma mark - 猫类的声明
@interface Cat : NSObject

@end

@implementation Cat



@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
