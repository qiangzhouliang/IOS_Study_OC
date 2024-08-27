//
//  Student.h
//  11-static关键字
//
//  Created by swan on 2024/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    int _number;
    NSString *_name;
    int _age;
}

+ (instancetype)student;

+ (instancetype)studentWithName:(NSString *)name andAge:(int)age;

- (void)showDetail;
@end

NS_ASSUME_NONNULL_END
