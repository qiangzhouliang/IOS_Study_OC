/*
 
 
 
 */
#import <Foundation/Foundation.h>
#import "SWPoint.h"

int main(int argc, const char * argv[]) {
    
    SWPoint *p1 = [SWPoint new];
    p1 -> _x = 100;
    p1 -> _y = 90;
    
    SWPoint *p2 = [SWPoint new];
    p2 -> _x = 200;
    p2 -> _y = 190;
    
    double distence = [p1 distenceWithOtherPoint:p2];
    NSLog(@"distence = %lf", distence);
    
    
    return 0;
}
