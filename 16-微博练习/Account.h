//
//  Account.h
//  16-微博练习
//  账户类
//  Created by swan on 2024/8/25.
//

/*
 * 账号名称
 * 张号密码
 * 账号注册时间（可以用字符串表示NSString）
 */

#import <Foundation/Foundation.h>

typedef struct {
    int year;
    int month;
    int day;
}SWDate;

NS_ASSUME_NONNULL_BEGIN

@interface Account : NSObject

/**
 账号名称
 */
@property(nonatomic, retain)NSString *userName;

/// 账号密码
@property(nonatomic, retain)NSString *password;

/// 注册时间
@property(nonatomic, assign)SWDate registDate;

@end

NS_ASSUME_NONNULL_END
