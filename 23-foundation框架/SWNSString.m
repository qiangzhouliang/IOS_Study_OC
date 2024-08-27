/*
 1．NSString是1个数据类型.保存OC字符串的.
    NSString的本质是1个类.既然是1个类，
 
    所以，最标准的创建NSString对象的方式：
    NSString *str1 = [NSString new];
    NSString *str2 = [[NSString alloc] init];
    NSString *str3 = [NSString string];
 
    使用这种方式创建的字符串是1个空的字符.@""
 
    NSString对象就是用来存储字符串。
 
 2. NSString是0C中最常用的1个类了.所以DC提供了一种更为快速的创建字符串对象的方式，
    使用前缀@
 
    @"Jack"; 本质上这是1个NSString对象，这个NSString对象中存储的是"Jack"这个字符串。
    NSString *str1 = @"rose";
    
    1）. @"rose"本质上是1个NSString对象，这个对象中存储的是字符串"rose".
    2）. 将这个字符串对象的地址返回赋值给str1指针.
 
 3. NSString的恒定性
    1）.当我们使用简要的创建字符串对象的时候.也就是使用1个0C字符串常量来初始化字符串指针的时候。
        这个字符串对象是存储在 常量区（数据段）的。
 
        NSString *str4 = @"jack";
        
        当我们调用NSString的类方法来创建对象的时候。
 
        NSString *str = [NSString stringWithFormar:@"jack"];
        NSString *str1 = ［NSString new］；
        创建的字符串对象是存储在堆区.
 
    2）．当在内存中创建1个字符串对象以后。这个字符串对象的内容就无法更改。
        当我们重新为字符串指针初始化值的时候，并不是修改原来的字符串对象
        而是璽新的创建1个字符串对象 将这个字符串对象的地址重新复制给字符串指针变量.
 
    3）.当系统准备要在内存中创建字符串对象的时候。会先检查内存中是否有相同内容的字符串对象。
        如果有，直接指向。如果没有才会重新创建。
 
    4）.存储在常量区的数据不会被回收，所以存储在常量区的字符串对象也不会被回收.
 
 */
#import "SWNSString.h"
#import "LogUtil.h"

@implementation SWNSString

- (void)study{
    NSLog(@"NSString Study");
    
    NSString *str1 = [NSString new];
    NSString *str2 = [[NSString alloc] init];
    NSString *str3 = [NSString string];
    
    NSString *str4 = @"jack";
    NSLog(@"str4 = %@", str4);
}


/*
 1. NSString是1个类.那么肯定其中有很多的方法.
 
 2．使用频率最最高的几个方法.
    1）．使用拼接的方式创建1个NSString对象.
         + (instancetype)stringWithFormat:(NSString *)format
 
         int age = 10;
         NSString *str = @"jack";
         //大家好，我叫xx，我今年xx岁
         NSString *newStr = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁",str,age];
         NSLog(@"newStr=%@", newStr);
 
    2）．得到字符串的长度
        @property(readonly) NSUInteger length;
        
        NSUInteger len = newStr.length;
        NSLog(@"len=%lu", len);
 
    3）．得到字符串中指定下标的字符.
        - (unichar)characterAtIndex:(NSUInteger)index;
 
        返回值是unichar类型的 要打印的话使用%0
         NSString *str = @"Jack i love you";
         unichar ch = [str characterAtIndex:2];
         NSLog(@"ch = %C", ch);
 
    4），判断两个字符串的内容是否相同
 
        - (BOOL)isEqualTo:(id)object;
 
        a． 能否使用== 来判断两个OC字符串的内容是否相同，
        b. == 运算符的作用：比较左右两边的数据是否相同。
            -> 10 == 10 这个时候直接比较的是左右两边的数据是否相同。
            -> a == b 两边也可以写1个变量，这个时候比较是左右两边的变量的值是否相同.
            -> 如果两边是1个指针变量.那么比较的也是变量的值，只不过指针变量的值是地址。
        
        C．调用方法：
            - （BOOL） isEqualTostring： （NSString *）astring；
            就可以比较当前字符串对象和传入的字符串对象的内容是否相同。
 
    5）．将C语言的字符串转换为OC字符串对象。
        + (instancetype)stringWithUTF8String:(const char *)nullTerminatedCString;
 
    6）．将OC字符串对象转换为C语言的字符串
        @property(readonly) const char *UTF8String;
 
 3. 常用方法
 
    1). 将字符串内存写入到磁盘上的某1个文件之中.
        - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
 
        - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile
            encoding:(NSStringEncoding)enc
               error:(NSError * _Nullable *)error;
 
        参数1 path：将字符串内容写入到那1个文件之中 写上文件的路径，
        参数2 useAuxiliaryFile：
                            YES->先将内容，写入到1个临时文件中，如果成功再将这个文件搬到指定的目录下，安全，效率低。
                            NO ->直接将内容写入到指定的文件，不安全 效率高
        参数3 enc：指定写入的时候使用的编码，一般情况下这里写.NSUTF8StringEncoding
        参数4 error：二级指针，要传递1个NSError指针的地址
        返回值是 BOOL类型的，代表释放写入成功。
 
 */
- (void)常用成员{
    
    NSString *str1 = @"Jack";
    NSError *err;
    BOOL res =  [str1 writeToFile:@"/Users/swan/Desktop/self_project/iOS/study-OC/23-foundation框架/abc.txt" atomically:NO encoding:NSUTF8StringEncoding error:&err];
    LogBOOL(res);
    if(err){
        NSLog(err.localizedDescription);
    } else {
        NSLog(@"写入成功");
    }
    
//    NSString *str1 = @"Jack";
//    NSString *str2 = @"Jack";
//    Boolean res = [str1 isEqualTo:str2];
//    LogBOOL(res);
    
    
//    NSString *str = @"Jack i love you";
//    unichar ch = [str characterAtIndex:2];
//    NSLog(@"ch = %C", ch);
    
//    int age = 10;
//    NSString *str = @"jack";
//    //大家好，我叫xx，我今年xx岁
//    NSString *newStr = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁",str,age];
//    NSLog(@"newStr=%@", newStr);
//    
//    NSUInteger len = newStr.length;
//    NSLog(@"len=%lu", len);
}

/*
 + (nullable instancetype)stringWithContentsOfFile:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError **)error;
 参数1：文件路径
 参数2：使用的编码
 参数3：错误对象
 
 */
- (void)从磁盘上的文件中读取文件中的内容{
    NSError *err;
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/swan/Desktop/self_project/iOS/study-OC/23-foundation框架/abc.txt" encoding:NSUTF8StringEncoding error:&err];
    if(err){
        NSLog(err.localizedDescription);
    } else {
        NSLog(str);
    }
}

-(void)demo{
//    [self 使用URL来读写字符串数据];
    
    [self 字符串的比较];
}

/*
 1）．优势：既可以读写本地磁盘文件.
    还可以读写网页文件、ftp服务器上的文件.
 
 2），不同的类型的URL地址的写法.
    1）.本地磁盘文件：file:///Users/itcast/Desktop/1.txt
    2）.网页地址：http://www.itcast.cn/index.html
    3）.ftp文件的地址：ftp://server.itcast.cn/1.txt
 
 3）. 将地址信息包装在 1个 NSURL对象之中.
    -> 将本地文件路径封装在 NSURL 对象之中.
        NSURL url = [NSURL URLWithString:@"file:///Users/Highven/Desktop/123.txt"];
    -＞ 将网页地址路径封装在 NSURL 对象之中.
        NSURL *url = [NSURL URLWithString:@"http://gz.itcast.cn"];
    -> 将ftp 文件路径封装在 NSURL 对象之中.
        NSURL *url = [NSURL URLWithString:@"ftp://server.itcast.cn/ios/cjk.txt"];
 
 4）. 读取 NSURL 对象中保持的路径的文件数据.
    ＋(instancetype)stringWithContents0fURL: (NSURL *)url encoding: (NSStringEncoding)enc error: (NSError **)error;
    第1个参数：封装了地址的 NSURL 对象.
    第2个参数：编码方式，一般传递 NSUTF8StringEncoding
    第3个参数：二级指针.传入1个 NSError 的1个二级指针.
    如果方法执行成功.则方法执行完毕之后.这个 NSError 的指针的值为nil
 
 */
- (void)使用URL来读写字符串数据{
    NSError *err;
    NSURL *u1 = [NSURL URLWithString:@"http://www.itcast.cn"];
    NSString *str = [NSString stringWithContentsOfURL:u1 encoding:NSUTF8StringEncoding error:&err];
    if(err){
        NSLog(err.localizedDescription);
    } else {
        NSLog(str);
    }
}

/*
 1. 字符串比较
    - (NSComparisonResult)compare:(NSString *)string;
 
 2. 忽略大小写的字符串比较
    NSComparisonResult res = [str1 compare:str2 options:NSCaseInsensitiveSearch];
 
 3. 比较字符串里面的数字
    NSComparisonResult res = [img1 compare:img2 options:NSNumericSearch];
    
    注意：只能比格式固定的
 
 4. 字符串相等判断
    - (BOOL)isEqualTo:(id)object;
 
 5. 判断字符串以什么开头
    - (BOOL)hasPrefix:(NSString *)str;
    NSString *str = @"http://www.baidu.com";
    BOOL res = [str hasPrefix:@"http://"];
 
 6. 判断字符串以指定的字符串结尾
    - (BOOL)hasSuffix:(NSString *)str;
 
 7. 在主串中搜索子串-从前往后
    - (NSRange)rangeOfString:(NSString *)searchString;
 
    返回值是1个NSRange类型的结构体变量
     typedef struct NS_SWIFT_SENDABLE _NSRange {
         NSUInteger location;  // 代表子串在主串中第一次出现的下标
         NSUInteger length;    // 代表子串在主串中匹配的长度
     } NSRange;
 
    如果没有找到：
    location 为NSUInteger的最大值，也就是NSNotFound
    length 的值为0
 
 7. 在主串中搜索子串-从后往前
    NSString *str1 = @"i love chiness love";
    NSRange range = [str1 rangeOfString:@"love" options:NSBackwardsSearch];
 
 8. NSRange结构体
    1）．是Foundation框架中定义的1个结构体，
     typedef struct NS_SWIFT_SENDABLE _NSRange {
         NSUInteger location;  // 代表子串在主串中第一次出现的下标
         NSUInteger length;    // 代表子串在主串中匹配的长度
     } NSRange;
 
    NSRange range;
    这个结构体变量一般情况下用来表示1段范围。特别用在子串在主串中的范围表示。
 
 9. 字符串截取
    - (NSString *)substringFromIndex:(NSUInteger)from; // 从指定的位置一致截取到最后
    - (NSString *)substringToIndex:(NSUInteger)to;     // 从弟0个开始截取指定个
    - (NSString *)substringWithRange:(NSRange)range;   // 截取指定的一段范围
 
 10. 字符串替换
    - (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement
    将字符串当中的第一个字符串替换为第2个参数：原来的指针指向字符串的内容是不会变的，新串是以方法的返回值返回的。
 
 11. 字符串转换为其他类型
     @property (readonly) double doubleValue;
     @property (readonly) float floatValue;
     @property (readonly) int intValue;
     @property (readonly) NSInteger integerValue API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
     @property (readonly) long long longLongValue API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
     @property (readonly) BOOL boolValue API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
 
 */
- (void)字符串的比较{
//    -------------在主串中搜索子串------------
    NSString *str1 = @"i love chiness love";
    // 从前往后
//    NSRange range = [str1 rangeOfString:@"love"];
    // 从后往前
    NSRange range = [str1 rangeOfString:@"love" options:NSBackwardsSearch];
    NSLog(@"loc = %lu", range.location);
    NSLog(@"length = %lu", range.length);
    
    
//    -------------判断字符串以什么开头------
//    NSString *str = @"http://www.baidu.com";
//    BOOL res = [str hasPrefix:@"http://"];
//    LogBOOL(res);
    
//    -------------字符串相等判断-----------
//    NSString *str1 = @"rose";
//    NSString *str2 = @"rose";
//    BOOL res = [str1 isEqualTo:str2];
//    LogBOOL(res);
    
//    ---------------比较字符串里面的数字-----
//    NSString *img1 = @"pic1000.jpg";
//    NSString *img2 = @"pic1010.jpg";
//    NSComparisonResult res = [img1 compare:img2 options:NSNumericSearch];
    
//    --------------------------------------
//    NSString *str1 = @"rose";
//    NSString *str2 = @"ROSE";
//    
//    // 不区分大小写
//    NSComparisonResult res = [str1 compare:str2 options:NSCaseInsensitiveSearch];
    
    // 区分大小写
//    NSComparisonResult res = [str1 compare:str2];
//    switch (res) {
//        case NSOrderedAscending:
//            // 说明 str1 比 str2小
//            NSLog(@"str1 < str2");
//            break;
//        case NSOrderedDescending:
//            // 说明 str1 > str2小
//            NSLog(@"str1 > str2");
//            break;
//        case NSOrderedSame:
//            // 说明 str1 = str2小
//            NSLog(@"str1 = str2");
//            break;
//    }
    
}
@end
