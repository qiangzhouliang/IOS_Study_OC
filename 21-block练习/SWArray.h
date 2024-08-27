//
//  SWArray.h
//  21-block与协议
//
//  Created by swan on 2024/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SWArray : NSObject
{
    int _arr[10];
}


- (void)bianLiWithBlock:(void(^)(int value))processBlock;
@end

NS_ASSUME_NONNULL_END
