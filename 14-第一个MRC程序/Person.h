//
//  Person.h
//  14-第一个MRC程序
//
//  Created by swan on 2024/8/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString *name;
@property int age;

- (void)sayHi;

@end

NS_ASSUME_NONNULL_END
