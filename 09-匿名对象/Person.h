//
//  Person.h
//  09-匿名对象
//
//  Created by swan on 2024/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}

-(void)sayHi;
@end

NS_ASSUME_NONNULL_END
