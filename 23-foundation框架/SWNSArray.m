/*
 1．回忆C语言中的数组
     特点：
         a.存储多个数据.
         b．类型相同。
         C.长度固定.
         d. 每1个元素都是紧
 
 2. NSArray
 
    1）.是Foundation框架中的一个类。这个类的对象是来存储多个数据的，具备数组的功能.所以，NSArray是OC中的数组.
 
    2）.特点
         a．只能存储OC对象，任意的OC对象
         b．长度固定，一旦NSArray数组创建完毕之后，元素的长度固定，无法新增 无法删除元素.
         c.每1个元素都是紧密相连的.每1个元素仍然有自己的下标。
         d. 元素的类型是id类型
 
 3. NSArray数组创建
 
    1）．因为这是1个类，所以当然就是创建NSArray对象。
 
         NSArray *arr1 = [NSArray new];
         NSArray *arr2 = [[NSArray alloc) init);
         NSArray *arr3 = [NSArray array];
         这样创建出来的NSArray数组的元素的个数是0个，因为长度固定.所以没有任何意义.
         + (instancetype)array;
 
    2）．创建数组的同时指定1个数组的元素
        + (instancetype)arrayWithObject:(ObjectType)anObject;
 
        NSArray *arr = [NSArray arrayWithObject:@"Jack"];
        任然没有意义，每个数字中只有1个元素
 
    3）．最常用的创建NSArray数组的方式.
        + (instancetype)arrayWithObjects:(ObjectType)firstObj, ...
 
        NSArray *arr = [NSArray arrayWithObjects:@"jack",@"rose",@"lili",nil];
         使用注意
            1）．只能存储OC对象，不能存储非OC对象。
            2）． 将元素写完以后，最后要写1个nil 表示元素到此结束了.
 
    4）．创建NSArray数组的简要方式.
        NSArray *arr = @［写上每1个元素的值用逗号分隔.]；
        NSArray *arr = @[@"jack",@"rose",@"lili"];
        注意：这种创建方式不需要再后面加 nil；
 
 4. NSArray数组的使用.
    1）．在NSLog函数中使用%@可以直接输出NSArray对象中的所有的元素的值。
        NSArray *arr = @[@"jack",@"rose",@"lili"];
        NSLog(@"%@",arr);
 
    2）．NSArray数组中不能存储基本数据类型。不能存储非OC对象，nil的本质其实就是0 所以nil无法存储到NSArray数组中。
 
 5. 取出存储在NSArray数组中的元素的值。
    1）．可以使用下标取出对应的元素的值.
        NSArray *arr = @le"jack"，＠"rose，＠"］；
        NSLog (@"%@", arr (2]);
 
        如果下标越界 就直接运行报错，
 
    2），调用数组对象的对象方法来取出指定下标的元素的值，
        - (ObjectType)objectAtIndex: (NSUInteger) index;
 
        NSArray *arr = @[@"jack",@"rose" ,@"lili"];
        NSString *str = larr objectAtIndex:31;
        NSLog (@"&@", str);
 
 6. NSArray数组的其他的常用方法
    1）．得到NSArray数组中的元素的个数.
 
        @property (readonly) NSUInteger count;
 
    2）．判断 NSArray 中是否包含指定的元素
        - (BOOL) containsObject: (id) an0bject;
 
    3）．取到 NSAray 数组的音不元素
        @property (nonatomic,readonly) id firstObject
 
    4）．取到 NSArray 数组的最后一个元素
        @property (nonatomic, readonly) id lastObject
 
    5）．在 NSArray 数組中，查找指定元素第1次出现的下标，如果沒有这个元素返回 NSNotFound
        - (NSUInteger) index0fObject: (id)an0bject;
        返回值 NSUInteger 如果在数组中找到指定的元素，就返回这个元素在数组中第1次出现的下标
        如果这个元素不存在数组之中，就返回 NSUInteger 的最大值.而 NSUInteger 的最大值被定义为了NSNotFound.
 
         NSArray *arr = @[@"jack",@"rose",@"lili"];
         NSUInteger res = [arr indexOfObject:@"rose"];
         if (res == NSNotFound) {
             NSLog(@"没有找到");
         } else {
             NSLog(@"出现的下标%lu",res);
         }
        
 7. NSArray数组的遍历.
    1）．使用for循环来遍历数组中的每1个元素，
         NSArray *arr = @[@"jack",@"rose" ,@"lili",@"jack",@"rose"
         for (int i = 0; i < arr. count; i++){
             //NSLog (@"%@", arr[i]);
             NSLog (@"%@", [arr objectAtIndex:i]);
         ｝
         原理：将下标挨个挨个遍历出来 取值.
 
    2）．使用增强for循环来遍历NSArray数组中的元素，
         a．语法格式：
             for（元素类型 变量名 in 数组名）
             ｛
                直接通过变量名就可以拿到数组中的每1个元素。
             ｝
 
        b.声明在for（）中的变量叫做迭代变量，
 
        C．执行的原理。
             将数组中的第1个元素的值赋值给迭代变量，执行循环体。
             将数组中的第2个元素的值赋值给迭代变量，执行循环体，
             将数组中的第3个元素的值赋值给迭代变量，执行循环体，
             ......
             将数组中的最后1个元素的值赋值给迭代变量，执行循环体，
             结束循环.
 
        d. 语法总结：
             -> 选代变量的类型和数组中的元素的类型保持一致.
             -> 迭代变量的名称可以任意取，根据自己的爱好。
             -> in是固定的。
             -> 遍历那1个数组，就降数组写在in后面。
             -> 循环体里面，迭代变量的值就是元素的值.
 
            当NSArray数组中存储的数据的类型不一致时候 迭代变量的类型建议使用id类型.
 
    3）．使用 block 遍历
 
        - (void)enumerateObjectsUsingBlock:(void (NS_NOESCAPE ^)(ObjectType obj, NSUInteger idx, BOOL *stop))block
 
        这是1个方法。这个方法的作用就是来遍历数组中的每1个元素，
         NSArray *arr = @[@"jack",@"rose",@"lili"];
         [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
             NSLog(@"%@", obj);
         }];
 
8. NSArray 与字符串的两个方法
    
    1）．将NSArray数组以指定的字符串连接，返回NSString字符串
     - (NSString *)componentsJoinedByString:(NSString *)separator;
     參数：连接符.
     
     NSArray *arr = @[@"jack",@"rose",@"lili"];
     NSString * str = [arr componentsJoinedByString:@"#"];
     NSLog(str);
 
    2）．将字符串以指定的分隔符分成1个数组，每1部分就是数组的1个元素，
 
         - (NSArray<NSString *> *)componentsSeparatedByString:(NSString *)separator;
         NSArray *arr1 = [str componentsSeparatedByString:@"#"];
         NSLog(@"%@", arr1);
 
 */
#import "SWNSArray.h"

@implementation SWNSArray

- (void)demo{
//    NSArray *arr = [NSArray arrayWithObjects:@"jack",@"rose",@"lili",nil];
    NSArray *arr = @[@"jack",@"rose",@"lili"];
    NSString * str = [arr componentsJoinedByString:@"#"];
    NSLog(str);
    
    NSArray *arr1 = [str componentsSeparatedByString:@"#"];
    NSLog(@"%@", arr1);
    
    
//    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"%@", obj);
//    }];
    
    
//    NSUInteger res = [arr indexOfObject:@"rose"];
//    if (res == NSNotFound) {
//        NSLog(@"没有找到");
//    } else {
//        NSLog(@"出现的下标%lu",res);
//    }
//    
//    
//    NSLog(@"%@",arr);
}

@end
