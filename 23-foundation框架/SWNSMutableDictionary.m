/*
 1. NSMutableDictionary
 
    1）．是NSDictionary的子类.所以NSMutablepictionary也是1个字典数组，也是以键值对的形式存储数据的。
 
    2）． 重点：NSMutableDictionary在父类基础之上做的扩张：
 
        存储在其中的元素可以动态的新增和删除。
 
    3）．创建可变字典数组.
        NSMutableDictionary *dict1 = [NSMutableDictionary new);
        NSMutableDictionary *dict2 = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *dict3 = [NSMutableDictionary dictionary];
        这样创建出来的可变字典数组的长度为0但是有意义 因为可以动态的新增和删除，
 
        NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"18",@"age", nil];
        在创建可变字典数组的同时初始化键值对，
 
        注意： NSMutableDictionary *dict = @f｝；这样是不行的。
 
 2. 如何新增键值对.
    - (void)setObject:(ObjectType)anObject forKey:(KeyType <NSCopying>)aKey;
    如果键重复。后添加的就会替换原有的.
 
    [dict setObject:@"甘肃省xxx时区" forKey:@"address"];
 
 3. 如何删除键值对
    - (void)removeObjectForKey:(KeyType)aKey;
 
    - (void)removeAllObjects;
 
 4. 也可以将字典数组的信息持久化起来。
 
    将字典数组的信息保存到plist文件中.
    - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile
 
    从plist文件中还原回字典。
    + (nullable NSMutableDictionary<KeyType, ObjectType> *)dictionaryWithContentsOfFile:(NSString *)path;
 
 */

#import "SWNSMutableDictionary.h"

@implementation SWNSMutableDictionary
- (void)demo{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"18",@"age", nil];
    
    [dict setObject:@"甘肃省xxx时区" forKey:@"address"];
    
//    [dict removeObjectForKey:@"name"];
    
    NSLog(@"%@", dict);
    
}
@end
