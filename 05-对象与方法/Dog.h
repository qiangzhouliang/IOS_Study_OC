//
//  Dog.h
//  05-对象与方法
//
//  Created by swan on 2024/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject
{
    @public
    NSString *_name;
    NSString *_color;
}

- (void)shout;

@end

NS_ASSUME_NONNULL_END
