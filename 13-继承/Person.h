//
//  Person.h
//  13-继承
//
//  Created by swan on 2024/8/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    float _height;
    float _weight;
    
}

@end

NS_ASSUME_NONNULL_END
