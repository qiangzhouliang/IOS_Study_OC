//
//  SWPoint.h
//  07-封装
//
//  Created by swan on 2024/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SWPoint : NSObject
{
    @public
    int _x;
    int _y;
}


// 计算这个点和另外一个点之间的距离
- (double)distenceWithOtherPoint:(SWPoint *)otherPoint;

@end

NS_ASSUME_NONNULL_END
