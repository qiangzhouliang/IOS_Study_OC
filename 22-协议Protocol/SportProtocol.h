//
//  SportProtocol.h
//  22-协议Protocol
//
//  Created by swan on 2024/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SportProtocol <NSObject>

@optional
- (void)paShan;

@required
- (void)swim;

@end

NS_ASSUME_NONNULL_END
