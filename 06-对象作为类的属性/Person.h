/*
 1．人拥有1条狗.如何表示这个关系，
    因为我们讲过，属性就代表的是类所拥有的东西。
    人有1条狗，就应该将狗作为人的属性.
    把狗作为人的属性。代表人有狗．
 
 2．属性的本质是变量。
    在创建对象的时候，对象中的属性是按照类模板中的规定挨个挨个的创建出来的.
    类模板中属性是什么类型.那么对象中的属性就是什么类型.
 
    如果对象的属性是另外1个类的对象，这个属性仅仅是1个指针变量而已.并没有对象产生。
    这个时候 还要为这个属性赋值1个对象的地址 才可以正常使用，
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    float _height;
    float _weight;
    NSString *_skinColor;
    NSString *_cpuntry;
    Dog *dog;
    
}
- (void)sayHi;
@end

NS_ASSUME_NONNULL_END
