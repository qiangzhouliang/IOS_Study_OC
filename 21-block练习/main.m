#import <Foundation/Foundation.h>
#include "SWArray.h"

int main(int argc, const char * argv[]) {
    
    SWArray *arr = [SWArray new];
    [arr bianLiWithBlock:^(int value) {
            NSLog(@"value = %d", value);
    }];
    
    return 0;
}
