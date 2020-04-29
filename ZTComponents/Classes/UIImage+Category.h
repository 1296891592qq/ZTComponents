//
//  UIImage+Category.h
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Category)
/**
 *  根据颜色生成一张图片
 *
 *  @param color 颜色
 *  @param size  图片大小
 *
 *  @return 图片
 */
+ (UIImage *)zt_imageWithColor:(UIColor *)color size:(CGSize)size;


/**
 给定两个颜色值，画出image

 @param colors colors
 @param imgSize size
 @return image
 */
+(UIImage *)zt_getGradientImageWithColors:(NSArray*)colors imgSize:(CGSize)imgSize;


@end

NS_ASSUME_NONNULL_END
