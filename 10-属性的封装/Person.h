//
//  Person.h
//  10-属性的封装
//
//  Created by swan on 2024/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    NSString *_name;  // 为姓名赋值的时候 要求姓名的长度不能小于2，否则就赋值为 @"无名"
    int _age;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setAge:(int)age;
- (int)age;

- (void)sayHi;
@end

NS_ASSUME_NONNULL_END
