//
//  Person.h
//  11-static关键字
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

- (void)sayHi;
@end

NS_ASSUME_NONNULL_END
