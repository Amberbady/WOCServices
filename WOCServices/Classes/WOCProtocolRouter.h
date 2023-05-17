//
//  WOCProtocolRouter.h
//  BeeHive
//
//  Created by 廖燊 on 2023/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WOCProtocolRouter <NSObject, BHServiceProtocol>
- (void)doSome;
@end

NS_ASSUME_NONNULL_END
