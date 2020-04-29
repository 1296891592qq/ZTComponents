//
//  UIButton+Category.h
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZTLayoutStatus){
    /** 正常位置，图左字右 */
    ZTLayoutStatusNormal,
    /** 图右字左 */
    ZTLayoutStatusImageRight,
    /** 图上字下 */
    ZTLayoutStatusImageTop,
    /** 图下字上 */
    ZTLayoutStatusImageBottom,
};

@interface UIButton (Category)


- (void)layoutWithStatus:(ZTLayoutStatus)status andMargin:(CGFloat)margin;

@end

NS_ASSUME_NONNULL_END
