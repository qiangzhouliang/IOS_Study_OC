//
//  Person.h
//  18-延展
//
//  Created by swan on 2024/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic, strong)NSString *name;
@property(nonatomic, assign)int age;


- (void)sayHi;

@end

NS_ASSUME_NONNULL_END
