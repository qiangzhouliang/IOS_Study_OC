//
//  Microblog.h
//  16-微博练习
// 微博类
//  Created by swan on 2024/8/25.
//
/*
 属性：
 * 文字内容
 * 图片
 * 发表时间（可以用字符串表示NSString）
 * 作者
 * 被转发的微博
 * 评论数
 * 转发数
 * 点赞数
 */
#import <Foundation/Foundation.h>
#import "Account.h"
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface Microblog : NSObject

/// 微博文字内容
@property(nonatomic, retain)NSString *content;

/// 微博配图路径
@property(nonatomic, retain)NSString *imgURL;

/// 发表时间
@property(nonatomic, assign)SWDate sendTime;

/// 作者
@property(nonatomic, retain)User *user;


/// 转发web
@property(nonatomic, retain)Microblog *zhuanfaBlog;



@end

NS_ASSUME_NONNULL_END
