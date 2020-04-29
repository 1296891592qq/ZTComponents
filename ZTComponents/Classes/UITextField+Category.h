//
//  UITextField+Category.h
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (Category)


/// 自定义tf
/// @param frame frame
/// @param text text
/// @param textColor 文字颜色
/// @param fontSize 字体大小
/// @param placeholder placeholder
/// @param placeholderColor placeholderColor
/// @param keyboardType 键盘样式
+(instancetype)zt_textFieldWithFrame:(CGRect)frame text:(NSString *_Nullable)text textColor:(UIColor *_Nullable)textColor fontSize:(float)fontSize placeholder:(NSString *_Nullable)placeholder placeholderColor:(UIColor *_Nullable)placeholderColor keyboardType:(UIKeyboardType)keyboardType;


/// 设置tf的最大输入数量 基于tf的 
/// @param maxlength maxlength
/// [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldTextDidChange:) name:UITextFieldTextDidChangeNotification object:self];
- (void)setMaxlength:(int)maxlength;

@end

NS_ASSUME_NONNULL_END
