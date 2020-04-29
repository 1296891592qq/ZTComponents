//
//  UILabel+Extension.h
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel ()

/**
 frame
 */
-(UILabel *(^)(CGRect))zt_frame;

/**
 test
 */
-(UILabel *(^)(NSString *))zt_text;

/**
 文字颜色
 */
-(UILabel *(^)(UIColor *))zt_textColor;

/**
 文字大小
 */
-(UILabel *(^)(CGFloat))zt_fontSize;

/**
 粗体文字大小
 */
-(UILabel *(^)(CGFloat))zt_boldFontSize;

/**
 aligment属性
 */
-(UILabel *(^)(NSTextAlignment))zt_aligment;

/**
 lines属性
 */
-(UILabel *(^)(int))zt_numLines;

/**
 背景色
 */
-(UILabel *(^)(UIColor *))zt_backgroundColor;

@end

NS_ASSUME_NONNULL_END
