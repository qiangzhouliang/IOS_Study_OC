/*
 1. 框架：就是系统（苹果）或者第三方（其他的一些高手）事先写好了一些很牛X功能的类.
        把这些类交给我们使用。这些类的集合我们叫做框架。
 
        框架中有很多很多功能相似的类。函数库
 
    Foundation框架： 是1个包 这里面有很多类、函数、定义了一些数据类型.
                    这个框架中的类都是一些最基础的类.NSString NSObject
                    其他的框架都是基于Foundation框架的.
 
    UIKit.
    AVFoundation.
 
 2. Foundation框架中的最常用的类
    1. NSString

 
 */

#import <Foundation/Foundation.h>
#import "SWNSString.h"
#import "SWNSMutableString.h"
#import "SWNSArray.h"
#import "SWNSMutableArray.h"
#import "SWNSNumber.h"
#import "SWNSDictionary.h"
#import "SWNSMutableDictionary.h"
#import "SWNSFileManager.h"

int main(int argc, const char * argv[]) {
//    ------------------NSString-----------------
//    [[SWNSString new]study];
//    [[SWNSString new] 常用成员];
//    [[SWNSString new] 从磁盘上的文件中读取文件中的内容];
//    [[SWNSString new] demo];
    
//    [[SWNSMutableString new]demo];
    
//    [[SWNSArray new]demo];
    
//    [[SWNSMutableArray new]demo];
    
//    [[SWNSNumber new]demo];
    
//    [[SWNSDictionary new]demo];
    
//    [[SWNSMutableDictionary new]demo];
    
    [[SWNSFileManager new]demo];
    
    return 0;
}
