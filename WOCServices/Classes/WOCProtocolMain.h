//
//  WOCProtocolMain.h
//  WOCServices
//
//  Created by 廖燊 on 2023/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WOCProtocolMain <NSObject, BHServiceProtocol>
- (void)pushOtherVc;
@end

NS_ASSUME_NONNULL_END
