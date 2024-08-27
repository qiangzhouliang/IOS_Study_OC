/*
 一、微博类（Microblog）
 属性：
 * 文字内容
 * 图片
 * 发表时间（可以用字符串表示NSString）
 * 被转发的微博
 二、作者类（User）
 *名称
 *生日
 *账号
 三、账号类（Account）
 * 账号名称
 * 张号密码
 * 账号注册时间（可以用字符串表示NSString）
 
 
 
 
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Microblog.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 创建1个账户
        Account *a1 = [[Account new] autorelease];
        a1.userName = @"luoyonghao245";
        a1.password = @"dawoya";
        a1.registDate = (SWDate){2015,11,10};
        
        User *lyh = [[User new] autorelease];
        lyh.nickName = @"罗永浩么么哒";
        lyh.birthday = (SWDate){1976,12,12};
        lyh.account = a1;
        
        Microblog *b1 = [[Microblog new] autorelease];
        b1.content = @"jijidjfijdijidjijdijfaisjfi";
        b1.imgURL = @"http://www.itcast.cn/logo.gif";
        b1.user = lyh;
        b1.zhuanfaBlog = nil;
        
        
        Account *a2 = [[Account new] autorelease];
        a2.userName = @"fangzhouziV587";
        a2.password = @"dawoya";
        a2.registDate = (SWDate){2015,11,10};
        
        User *fzz = [[User new] autorelease];
        fzz.nickName = @"方舟子么么哒";
        fzz.birthday = (SWDate){1976,12,12};
        fzz.account = a2;
        
        Microblog *b2 = [[Microblog new] autorelease];
        b2.content = @"好个毛线";
        b2.imgURL = @"http://www.itcast.cn/logo.gif";
        b2.user = fzz;
        b2.zhuanfaBlog = b1;
        
        
        
        
        
    }
    return 0;
}
