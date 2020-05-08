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


/// 压缩图片 如果要保证图片清晰度，建议选择压缩图片质量。如果要使图片一定小于指定大小，压缩图片尺寸可以满足。对于后一种需求，还可以先压缩图片质量，如果已经小于指定大小，就可得到清晰的图片，否则再压缩图片尺寸。
/// @param image image
/// @param maxLength max bate size
+ (UIImage *)compressImage:(UIImage *)image toByte:(NSUInteger)maxLength;

@end

NS_ASSUME_NONNULL_END
