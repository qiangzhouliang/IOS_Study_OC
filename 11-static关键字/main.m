/*
 1. C语言中的static
    a. 修饰局部变量，
    b．修饰全局变量，
    C．修饰函数.
 
 2. 0C中的static关键字.
    a. static不能修饰属性 也不能修饰方法.
    b. static可以修饰方法中的局部变量.
        如果方法中的局部变量被static修饰，那么这个变量就会被变成静态变量•
        存储在常量区 当方法执行完毕之后 不会回收 下次再执行这个方法的时候 直接使用 而不会再声明了•
 
 3. 如果方法的返回值是当前类的对象，那么方法的返回值就写instancetype
 
 */

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    Student *s1 = [Student studentWithName:@"Jack1" andAge:19];
    Student *s2 = [Student studentWithName:@"Jack2" andAge:19];
    Student *s3 = [Student studentWithName:@"Jack3" andAge:19];
    Student *s4 = [Student studentWithName:@"Jack4" andAge:19];
    
    [s4 showDetail];
    
    
    return 0;
}
