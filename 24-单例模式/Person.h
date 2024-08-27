//
//  Person.h
//  24-单例模式
//
//  Created by swan on 2024/8/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

+ (instancetype)sharedPerson;
+ (instancetype)defaultPerson;

@end

NS_ASSUME_NONNULL_END
