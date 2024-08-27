//
//  User.h
//  作者类（User）
//
//  Created by swan on 2024/8/25.
//
/*
 *名称
 *生日
 *账号
 */
#import <Foundation/Foundation.h>
#import "Account.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

/// 用户昵称
@property(nonatomic, retain)NSString *nickName;

/// 出生日期
@property(nonatomic, assign)SWDate birthday;

/// 用户账号信息
@property(nonatomic, retain)Account *account;

@end

NS_ASSUME_NONNULL_END
