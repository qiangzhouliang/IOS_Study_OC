/*
 1. NSMutableArray是NSArray的子类，
 
    1）.NSMutableArray仍然是1个数组.具备NSArray数组的特点.只能存储OC对象，每1个元素的紧密相连的.
 
    2）. NSMutableArray相对于父类做的扩展：NSMutableArray数组的元素可以动态的新增和删掉.其他的用法均与NSArray一致.
 
        所以：NSArray数组一旦创建，其元素的个数就固定，无法新增删除。
            NSMutableArray数组.元素可以新增 可以删除，其他用法和父类一样，
 
 2. NSMutableArray数组创建
     NSMutableArray *arr1 = [NSMutableArray new];
     NSMutableArray *arr2 = [[NSMutableArray alloc) init);
     NSMutableArray *arr3 = [NSMutableArray array];
    
    这样创建出来的数组对象.数组的元素是@仍然是有意义的 因为我们可以动态的新增和删除元素。
 
    也可以使用这样的方式来创建可变数组对象。
    tNSMutableArray *arr4 = ［NSMutableArray arraywithobjects：@"jack"，@"rose"，@"Lili"， nil]；
 
    最容易犯错：这样写是不可以的
    NSMutableArray arr5 = @[@"jack",@"rose" ,@"lili"]:
 
    @[@"jack",@"rose" ,@"lili"]；这是1个NSArray对象。
    arr5是1个子类指针，子类指针指向父类对象的就有可能会出问题。
 
 3. 往可变数组中新增元素
    
     - (void)addObject:(ObjectType)anObject;
     
     NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"Jack",@"rose",@"lili", nil];
     NSLog(@"arr.count = %lu", arr.count);
     [arr addObject:@"zhangsan"];
     NSLog(@"arr.count = %lu", arr.count);
 
    --------------------------------------
     NSArray *arr1 = @[@"rose",@"lucy"];
     [arr addObject:arr1];
     NSLog(@"arr.count = %lu", arr.count);
 
 4． 将另外1个数组中的每1个元素添加到可变数组中，
 
    - (void)addObjectsFromArray:(NSArray<ObjectType> *)otherArray;
 
     [arr addObjectsFromArray:arr];
     NSLog(@"arr.count = %lu", arr.count);
 
 5. 在可变数组的指定下标处播入1个元泰
    - (void) insertObject: (id)anObject atIndex: (NSUInteger) index;
 
 6. 删除指定下标的元素
    - (void) removebjectAtIndex: (NSUInteger) index;
 
 7. 删除特定的元素.删除值为指定值的元素.
    - (void) removeObject: (id)an0bject;
 
 8. 删除指定范围的内的元素
    - (void) removeObject: (id)anObject inRange: (NSRange) range;
 
 9. 删除最后1个元素
    - (void) removeLastObject;
 
 10. 删除所有的元素
    - (void) removeAllObjects;
 */

#import "SWNSMutableArray.h"

@implementation SWNSMutableArray

- (void)demo{
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"Jack",@"rose",@"lili", nil];
    
    NSLog(@"arr.count = %lu", arr.count);
    
    [arr addObject:@"zhangsan"];
    NSLog(@"arr.count = %lu", arr.count);
    
    NSArray *arr1 = @[@"rose",@"lucy"];
    [arr addObject:arr1];
    NSLog(@"arr.count = %lu", arr.count);
    
    [arr addObjectsFromArray:arr];
    NSLog(@"arr.count = %lu", arr.count);
    
}
@end
