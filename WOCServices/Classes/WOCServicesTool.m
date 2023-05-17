//
//  WOCServicesTool.m
//  Pods
//
//  Created by 廖燊 on 2023/5/17.
//

#import "WOCServicesTool.h"

@implementation WOCServicesTool
/**
 检查services协议方法，存在即回调completion，不存在则报错
 
 @param p 协议
 @param sel 方法
 @param completion 确认协议和方法存在时回调
 @param error 错误回调，可为nil
 */
+ (void)servicesProtocol:(Protocol *)p action:(SEL)sel completion:(void (^)(id service))completion error:(nonnull void (^)(NSString * _Nonnull))error
{
    id aService = [[BHServiceManager sharedManager] createService:p];
    if ([aService respondsToSelector:sel]) {
        completion(aService);
    } else {
        // 错误信息
        NSString *msg = [NSString stringWithFormat:@"协议：%@ 没有实现方法：%@", NSStringFromProtocol(p), NSStringFromSelector(sel)];
        // 错误回调
        if (error) {
            error(msg);
        }
    }
}
@end
