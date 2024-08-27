/*
 1. block 是一个数据类型。能不能作为函数的参数呢？
 
 2. 如何为函数定义block类型的参数？
    a． 就是在小括弧中声明1个指定格式的block变量就可以了.
    b．可以使用typedef简化定义，这样看起来就不会晕了．
 
     typedef void(^NewType)();
     //为这个函数定义1个参数，定义1个block类型的參数．
     //无参数的无返回值的block
     void test(NewType block1){
         NSLog(@"--------------------");
         block1();
         NSLog(@"--------------------");
     }
 
 3. 如何调用带block参数的函数呢？
 
    a．如果要调用的函数的参数是block类型的，那么要求在调用的时候传入1个和形参block要求的代码段。
     NewType type = ^{
         NSLog(@"hahahaha");
     };
     test(type);
 
    b，调用的时候，可以先讲代码段存储到1个bloCk变量中，然后再传递这个block变量
        也可以直接将符合要求的代码段写在小括弧中传递。
    c．小技巧，通过Xcode提示可以快速的生产block代码段的框架.
 
 4．将block作为函数的参数可以实现什么样的效果？
    
    可以将自己的代码发送到函数内部去执行
 
 5. block可以作为函数返回值
 
    当将block作为函数的返回值的时候，返回值的类型就必须要使用typedef定义的短类型.
     typedef void(^NewType)();
     NewType ttt(){
         void (^block1)() = ^{
             NSLog(@"~~~~~~~~~~~~~~~~");
             NSLog(@"~~~~~~~~~~~~~~~~");
         };
         return block1;
     }
 
 6. block 与 函数
 
    相同点：都是封装1段代码。
 
    不同点：
        1）．block是1个数据类型.函数是1个函数.
        2），我们可以声明block类型的变量 函数就只是函数.
        3）.block可以作为函数的參数，而函数不能直接作为函数的參数.

 */

#import <Foundation/Foundation.h>

typedef void(^NewType)();


//为这个函数定义1个参数，定义1个block类型的參数．
//无参数的无返回值的block
void test(NewType block1){
    NSLog(@"--------------------");
    block1();
    NSLog(@"--------------------");
}

NewType ttt(){
    void (^block1)() = ^{
        NSLog(@"~~~~~~~~~~~~~~~~");
        NSLog(@"~~~~~~~~~~~~~~~~");
    };
    return block1;
}


int main(int argc, const char * argv[]) {
    NewType type = ^{
        NSLog(@"hahahaha");
    };
//    test(type);
    
    ttt()();
    
    
    
    return 0;
}
