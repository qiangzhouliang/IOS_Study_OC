//
//  Dog.h
//  22-协议Protocol
//
//  Created by swan on 2024/8/26.
//

#import <Foundation/Foundation.h>
#import "MyProtocol.h"
#import "SportProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject <MyProtocol, SportProtocol>

@end

NS_ASSUME_NONNULL_END
