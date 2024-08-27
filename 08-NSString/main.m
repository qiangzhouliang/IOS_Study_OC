/*
 1. NSString是1个数据类型.用来保存OC字符串的.

 2. 其实NSString是Foundation框架中的1个类，
    作用：存储OC字符串的，所以.0C中的字符串本质上是用NSString对象来存储的.
 
 3. 其实完整的标准的创建NSString对象的方式
 
    NSString *str = [NSString new];
    NSString *str1 = [NSString string];
 
    这种方式创建的字符串是空字符串 @""
 
    但是.NSString是我们最常用的1个对象 所以OC使用了1种更简单的方式来创建字符串对象，
    
    直接使用@来表示1个0C字符串.
 
    @"jack"这个其实本质上是1个NSString对象.
    NSString *str = @"jack";
    @""jack" 是1个NSString对象 str的值是这个对象的地址.
 
    %p 打印的是指针变量的值
    %@ 打印的是指针变量指向的对象，
 
 4. NSString 最常用的类方法
    1). + (nullable instancetype)stringWithUTF8String:(const char *)nullTerminatedCString NS_FORMAT_ARGUMENT(1);
        instancetype 作为返回值 代表返回的是当前这个类的对象.
        作用：将C语言的字符串转换为OC字符串对象.
 
         char *str0 = "rose";
         NSString *str1 = [NSString stringWithUTF8String:str0];
         NSLog(@"str1 = %@", str1);
 
    2). + (instancetype)stringWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);
        作用：拼接1个字符串对象，使用变量或者其他数据拼接成OC字符串.
 
         int age =   19;
         NSString *name = @"小明";
         
         // @"大家好我叫XX 我的年龄是XX”
         NSString *str = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁",name,age];
         NSLog(@"str = %@", str);
        
 5. 最常用的对象方法
    1). length 方法，返回值为 NSUInteger，其实就是 unsigned long，得到字符串的字符个数 可以处理中午。
 
         NSString *str = @"itcast";
         NSUInteger len = [str length];
         NSLog(@"len = %lu", len);
 
    2). 得到字符串中指定下标的字符
        - (unichar)characterAtIndex:(NSUInteger)index;
        返回值是unichar 其实就是unsinged short 占据2个字节.
 
        NSString *str = @"itcast";
        unichar ch = [str characterAtIndex:2];
 
        如果要输出unichar变量的值使用%C 这是大写C
 
    3). 判断两个字符串的内容是否相同
        a. 判断两个字符串的内容是否相同 不要用==去判断 因这样有可能会出问题.
        b. 判断相等的方式
            - (BOOL)isEqualToString:(NSString *)aString;
            所以，判断两个字符串是否相等 应该使用这个方法区判断 才会得到正确的结果，
 
         NSString *str1 = @"Jack";
         NSString *str2 = [NSString stringWithFormat:@"Jack"];
         if ([str1 isEqualToString:str2]) {
             NSLog(@"yes 他们是相等的");
         } else {
             NSLog(@"no 他们不相等的");
         }
        
    4). 比较字符串的大小
        - (NSComparisonResult)compare:(NSString *)string;
        完全可以使用int类接收结果，因为返回值是1个枚举.
 
         NSString *str1 = @"Jack";
         NSString *str2 = [NSString stringWithFormat:@"1Jack"];
         NSComparisonResult res = [str1 compare:str2];
         NSLog(@"res = %d",res);
 
        
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString *str1 = @"Jack";
    NSString *str2 = [NSString stringWithFormat:@"1Jack"];
    NSComparisonResult res = [str1 compare:str2];
    NSLog(@"res = %d",res);
    
//    NSString *str1 = @"Jack";
//    NSString *str2 = [NSString stringWithFormat:@"Jack"];
//    if ([str1 isEqualToString:str2]) {
//        NSLog(@"yes 他们是相等的");
//    } else {
//        NSLog(@"no 他们不相等的");
//    }
    
//    NSString *str = @"我爱你中国";
//    unichar ch = [str characterAtIndex:2];
//    NSLog(@"ch = %C", ch);
    
    
//    NSUInteger len = [str length];
//    NSLog(@"len = %lu", len);
    
    
//    int age =   19;
//    NSString *name = @"小明";
//    
//    // @"大家好我叫XX 我的年龄是XX”
//    NSString *str = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁",name,age];
//    NSLog(@"str = %@", str);
    
    
//    NSString *str = @"jack";
//    
//    char *str0 = "rose";
//    NSString *str1 = [NSString stringWithUTF8String:str0];
//    NSLog(@"str1 = %@", str1);
    
    
    return 0;
}
