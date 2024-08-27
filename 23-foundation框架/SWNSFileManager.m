/*
 1. NSFileManger是Foundation框架提供的1个类，
    这个类作用：用来操作磁盘上的文件 文件夹 对他们进行创建、删除、复制 拷贝 移动⋯••
 
 2. NSFileManager是1个类.
    这个类的对象是以单例模式创建的。
    如何得到NSF1LeManager的1个单例对象。
    掉用这个类的类方法，defaultManager 就可以得到这个类的单例对象
    NSFileManager *fileManager = [NSFileManager defaultManager];
 
 3．常用方法之 判断。
    1），判断指定的文件或者文件夹在磁盘上是否真实的存在
        - （BOOL）fileExistsAtPath： （NSString *）path；
 
    2）.判断指定的路径是否真实的存储在我们的磁盘之上，并且判断这个路径是1个文件夹路径还是1个文件路径.
        - （BOOL）fileExistsAtPath：（NSString *）path isDirectory： （B00L *）isDirectory；
        返回值：代表这个路径是否真实存在.
        参数指针：代表这个路径是否是1个文件夹路径
 
    3），判断指定的文件夹或者文件是否可以读取。
        - （B0OL） isReadableFileAtPath：（NSString *）path；
 
    4），判断指定的文件夹或者文件是否可以写入。
        - (BOOL) isWritableFileAtPath: (NSString *)path;
 
    5）．判断指定的文件夹或者文件是否可以删除，
        - (BOOL) isDeletableFileAtPath: (NSString *)path
 
 4．常见方法之 获取信息。
    1）.获取指定文件或者文件夹的属性信息，
        - (NSDictionary *)attributesOfItemAtPath: (NSString *)path error: (NSError **)error
        返回的是1个字典，如果要拿到特定的信息 通过key
 
    2）.获取指定目录下的所有的文件和目录，是拿到指定目录下的所有的文件和目录 所有的后代目录和文件。
        -（NSArray *subpathsAtPath：（NSString *）path；
 
    3）.获取指定目录下的所有的子目录和文件 不包括孙子辈，
        - (NSArray *) contents0fDirectoryAtPath: (NSString *)path error: (NSError **)error
 
 5. 常见方法之 文件/目录的创建
    
    1）． 在指定的目录创建文件.
        - (BOOL) createFileAtPath: (NSString *)path contents: (NSData *)data attributes: (NSDictionary *)attr
        第1个参数：要创建的文件的路径.
        第2个参数：这个文件的内容.要传递这个文件的二进制格式，这个二进制的数据格式 使用NSData对象来封装.
 
                NSData：将别的格式的数据转换为二进制数据。
                将字符串转换为NSData二进制的方式。调用字符串对象的
                - (NSData *)dataUsingEncoding: (NSStringEncoding) encoding
                    编码参数：NSUTF8StringEncoding
                指定1个编码 就可以将字符串转换为二进制数据 存储在NSData对象之中.
 
                最后再将这个二进制对象通过这个方法写入。
 
                如果想创建1个空文件 第2个参数就给nil
 
        第3个参数：指定创建的文件的属性。如果想要使用系统的默认值使用nil
 
    2），在指定的目录创建文件夹.
        - (BOOL)createDirectoryAtPath:(NSString *)path withIntermediateDirectories:(BOOL)createIntermediates attributes:(nullable NSDictionary<NSFileAttributeKey, id> *)attributes error:(NSError **)error
 
        第1个参数：路径。
        第2个参数：YES，做一路创建，如果是NO就不会做一路创建．
        第3个参数：指定属性 nil为系统默认属性.
        第4个参数.
 
     3），拷贝文件，
        - (BOOL) copyItemAtPath: (NSString *)srcPath toPath: (NSString *)dstPath error: (NSError **)error
     
     4）.移动文件 剪切 文件的重命名.
        - (BOOL) moveItemAtPath: (NSString *)srcPath toPath: (NSString *)dstPath error: (NSError **)error
     
     5）.删除文件，
        - (BOOL) removeItemAtPath: (NSString *)path error: (NSError **)error
        注意 删除的文件不会倒废纸篓 而是直接删除，所以请小心使用，
 
 */

#import "SWNSFileManager.h"

@implementation SWNSFileManager
- (void)demo{
    NSFileManager *manager = [NSFileManager defaultManager];

    
}
@end
