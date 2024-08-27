//
//  Student.m
//  11-static关键字
//
//  Created by swan on 2024/8/23.
//

#import "Student.h"

@implementation Student

+ (nonnull instancetype)student {
    
    Student *stu = [Student new];
    return stu;
}

+ (nonnull instancetype)studentWithName:(nonnull NSString *)name andAge:(int)age {
    static int bianHao = 1;
    Student *stu = [Student new];
    stu->_name = name;
    stu->_age = age;
    stu->_number = bianHao;
    bianHao++;
    return stu;
}

- (void)showDetail{
    NSLog(@"number = %d, name = %@, age = %d", _number, _name, _age);
}

@end
