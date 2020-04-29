//
//  UIButton+Extension.h
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton ()

-(UIButton *(^)(CGRect))zt_frame;

-(UIButton *(^)(UIColor *))zt_norTitleColor;

-(UIButton *(^)(UIColor *))zt_selTitleColor;

-(UIButton *(^)(CGFloat))zt_fontSize;

-(UIButton *(^)(CGFloat))zt_boldFontSize;

-(UIButton *(^)(NSTextAlignment))zt_aligment;

-(UIButton *(^)(int))zt_numLines;

-(UIButton *(^)(int))zt_tag;

-(UIButton *(^)(UIColor *))zt_backgroundColor;

-(UIButton *(^)(NSString *))zt_norTitle;

-(UIButton *(^)(NSString *))zt_selTitle;

-(UIButton *(^)(NSString *))zt_norImg;

-(UIButton *(^)(NSString *))zt_selImg;

-(UIButton *(^)(NSString *))zt_heightImg;

-(UIButton *(^)(NSString *))zt_norBackimg;

-(UIButton *(^)(NSString *))zt_selBackimg;

-(UIButton *(^)(NSString *))zt_heightBackimg;

@end

NS_ASSUME_NONNULL_END
