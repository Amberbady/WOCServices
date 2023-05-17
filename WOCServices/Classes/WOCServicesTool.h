//
//  WOCServicesTool.h
//  WOCServices
//
//  Created by 廖燊 on 2023/5/17.
//

#import <Foundation/Foundation.h>
#import "BeeHive.h"
NS_ASSUME_NONNULL_BEGIN

@interface WOCServicesTool : NSObject
/**
 检查services协议方法，存在即回调completion，不存在则报错

 @param p 协议
 @param sel 方法
 @param completion 确认协议和方法存在时回调
 @param error 错误回调，可为nil
 */
+ (void)servicesProtocol:(Protocol *)p action:(SEL)sel completion:(void (^)(id service))completion error:(void(^)(NSString *errorMsg))error;
@end

NS_ASSUME_NONNULL_END

