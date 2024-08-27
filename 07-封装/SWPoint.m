//
//  SWPoint.m
//  07-封装
//
//  Created by swan on 2024/8/23.
//

#import "SWPoint.h"
#import <math.h>

@implementation SWPoint

- (double)distenceWithOtherPoint:(SWPoint *)otherPoint{
    // 1. 拿到当前这个点的 x 和 y 坐标
    // 2. 再拿到传入的这个点的xy坐标.
    // 3. 套公式得结果
    double res1 = (_x - otherPoint->_x) * (_x - otherPoint->_x);
    double res2 = (_y - otherPoint->_y) * (_y - otherPoint->_y);
    double res3 = res1 + res2;
    return sqrt(res3);
    
}

@end
