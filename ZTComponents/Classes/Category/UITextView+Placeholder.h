//
//  UITextView+Placeholder.h
//  ZTSmartHome
//
//  Created by ztgm on 2019/12/9.
//  Copyright © 2019 ztgm. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (Placeholder)

/// 利用runtime对textView添加placeholder属性
/// @param placeholder placeholder
/// @param color placeholder color
/// @param font placeholder color
- (void)setPlaceholder:(NSString *)placeholder placeColor:(UIColor *)color font:(CGFloat)font;


/// 利用通知对textView进行字数限制 [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textViewEditChanged:) name:@"UITextViewTextDidChangeNotification" object:self];
/// @param maxlength 最大字数
- (void)setMaxlength:(int)maxlength;

@end

NS_ASSUME_NONNULL_END
