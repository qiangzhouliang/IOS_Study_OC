/*
 1. NSArray与NSMutableArray 是OC中的数组.
    存储数据的特点：每1个元素紧密相连.并且每1个元素中都是直接存储的值.
    缺点：数组下标不固定，随时可能发生变化。无法通过下标来唯一确定数组中的元素，
 
    希望：有一种存储数据的方式，存储在数组当中，可以快速确定唯一数组元素
 
     存储数据的时候.必须要为存储的数据取1个别名，
     这个别名的作用：就是用来确定别名对应的数据的，
     要找存储在数组中的数据。使用别名来找 而不是通过下标来找 因为下标有可能会发生变化。
 
    这种存储数据的方式 就叫做 键值对 的存储方式
 
 
 2. NSDictionary 与 NSMutableDictionary
    
    1）．它们是数组，它们就是以键值对的形式存储数据的.
        往这个数组中存储数据的同时，必须要指定这个数据的别名才可以。
        要找到存储在这个数组中的数据 通过别名来找 而不是通过下标。
 
 3. NSDictionary 字典数组
    1）．存储数据的原理.
        a．以键值对的形式存储数据。
        b.字典数组一旦创建，其中的元素就无法动态的新增和删除.
        c.键：只能是遵守了NSCoping协议的对象，而NSString就是遵守了这个协议.
          值：只能是OC对象.
 
    2）．创建字典数组
         NSDictionary *dict1 = [NSDictionary new];
         NSDictionary *dict2 = [[NSDictionary alloc] init];
         NSDictionary *dict3 = [NSDictionary dictionary];
        这种方式创建出来的字典数组中没有任何元素。所以没有意义.
 
    3）.一般创建方式
        + (instancetype)dictionaryWithObjectsAndKeys:(id)firstObject, ...
 
        将字典数组的值键 挨个的写在后面初始化。
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"甘肃省xx市区",@"address", nil];
        NSLog(@"%@", dict[@"name"]);
 
 
    4）．简要创建方式.
        NSDictionary *dict = @f键1：值1，键2：值2，键3：值3，•••••••.｝；
        NSDictionary *dict = @{@"name":@"Jack",@"age":@"18",@"address":@"甘肃省xx市区"};
 
 4。使用字典数组。
    1）. 如何取出存储在字典数组中的数据，
        a.存储在字典数组中的元素不能使用下标去取 而是用键 也就是别名去取，
 
        ->使用中括弧的方式。
            字典数组名［键］；这样就可以去到字典数组中这个键对应的值。
            NSLog（@"%@"，dict［@"name"］）；取出dict字典数组中@"name”这个键对应的值.
 
        -> 调用字典数组对象的方法也可以取出键对应的值.
            - (nullable ObjectType)objectForKey: (KeyType)aKey;
            如果给定的key 在数组中不存在，取到的值是n11 不会报错。
 
    2）．取到字典数组的键值对的个数.
        @property (readonly) NSUInteger count;
 
    3）. 往字典数组中存储键值对的时候 键不允许重复.
         如果键重复：后加的无效.?????????????
 
 5．遍历字典数组
    1）.字典数组中的数据无法使用下标去取 所以普通的for循环遍历下标发就无用武之地了.
 
    2）. 使用for in循环，遍历出来的是字典数组中所有的键。
         NSDictionary *dict = @{@"name":@"Jack",@"age":@"18",@"address":@"甘肃省xx市区"};
         for (id item in dict) {
             NSLog(@"%@ = %@", item, dict[item]);
         }
    
    3）. 使用 block 遍历
        - (void)enumerateKeysAndObjectsUsingBlock:(void (NS_NOESCAPE ^)(KeyType key, ObjectType obj, BOOL *stop))block
 
         NSDictionary *dict = @{@"name":@"Jack",@"age":@"18",@"address":@"甘肃省xx市区"};
         [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
             NSLog(@"%@ = %@", key, obj);
         }];
 
 6. 字典数组存储数据的原理。
 
    1）. 当往字典数组中存储1个键值对的时候，这个键值对应该存储在下标为几的元素中呢？
        -> 并不是按照顺序挨个挨个的存储的。
 
        -> 存储键值对的时候，会根据键和数组的长度做1个哈希算法.算出1个下标。将这个键值对存储在该下标处，
 
    2）．取值的时候：
        也是根据键做1个哈希算法.就可以算出这个键值对存储的下标 然后直接找到这个下标的数据取出就可以了，
 
 */

#import "SWNSDictionary.h"

@implementation SWNSDictionary
- (void)demo{
    NSDictionary *dict = @{@"name":@"Jack",@"age":@"18",@"address":@"甘肃省xx市区"};
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@ = %@", key, obj);
    }];
    
//    for (id item in dict) {
//        NSLog(@"%@ = %@", item, dict[item]);
//    }
    
//    NSLog(@"%@", dict);
    
    
    
    
//    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"甘肃省xx市区",@"address", nil];
//    NSLog(@"%@", dict[@"name"]);
}
@end
