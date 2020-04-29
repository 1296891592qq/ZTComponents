//
//  UITextField+Category.m
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import "UITextField+Category.h"

@implementation UITextField (Category)

/// 自定义tf
/// @param frame frame
/// @param text text
/// @param textColor 文字颜色
/// @param fontSize 字体大小
/// @param placeholder placeholder
/// @param placeholderColor placeholderColor
/// @param keyboardType 键盘样式
+(instancetype)zt_textFieldWithFrame:(CGRect)frame text:(NSString *_Nullable)text textColor:(UIColor *_Nullable)textColor fontSize:(float)fontSize placeholder:(NSString *_Nullable)placeholder placeholderColor:(UIColor *_Nullable)placeholderColor keyboardType:(UIKeyboardType)keyboardType {
    
    UITextField *textfield = [[UITextField alloc]init];
    textfield.frame = frame;
    textfield.font = [UIFont systemFontOfSize:fontSize];
    textfield.keyboardType = keyboardType;
    
    if (text) {
        textfield.text = text;
    }
    
    if (textColor) {
        textfield.textColor = textColor;
    }
    
    if (placeholder) {
        textfield.placeholder = placeholder;
    }
    
    if (placeholderColor) {
        [textfield setValue:placeholderColor forKeyPath:@"_placeholderLabel.textColor"];
    }
    
    return textfield;
    
}

/// 设置tf的最大输入数量 基于tf的
/// @param maxlength maxlength
/// [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldTextDidChange:) name:UITextFieldTextDidChangeNotification object:self];
- (void)setMaxlength:(int)maxlength {
    
    UITextField *textField = (UITextField *)self;
    NSString *toBeString = textField.text;
    NSString *lang = [textField.textInputMode primaryLanguage];
    if ([lang isEqualToString:@"zh-Hans"])// 简体中文输入
    {
        //获取高亮部分
        UITextRange *selectedRange = [textField markedTextRange];
        UITextPosition *position = [textField positionFromPosition:selectedRange.start offset:0];
        
        // 没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if (!position)
        {
            if (toBeString.length > maxlength)
            {
                textField.text = [toBeString substringToIndex:maxlength];
            }
        }
        
    }
    // 中文输入法以外的直接对其统计限制即可，不考虑其他语种情况
    else
    {
        if (toBeString.length > maxlength)
        {
            NSRange rangeIndex = [toBeString rangeOfComposedCharacterSequenceAtIndex:maxlength];
            if (rangeIndex.length == 1)
            {
                textField.text = [toBeString substringToIndex:maxlength];
            }
            else
            {
                NSRange rangeRange = [toBeString rangeOfComposedCharacterSequencesForRange:NSMakeRange(0, maxlength)];
                textField.text = [toBeString substringWithRange:rangeRange];
            }
        }
    }
}

@end
