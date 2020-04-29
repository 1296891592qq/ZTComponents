//
//  UITextView+Placeholder.m
//  ZTSmartHome
//
//  Created by ztgm on 2019/12/9.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import "UITextView+Placeholder.h"

@implementation UITextView (Placeholder)

- (void)setPlaceholder:(NSString *)placeholder placeColor:(UIColor *)color font:(CGFloat)font {
    
    UILabel *placeHolderLabel = [[UILabel alloc] init];
    placeHolderLabel.text = placeholder;
    placeHolderLabel.numberOfLines = 0;
    placeHolderLabel.textColor = color;
    [placeHolderLabel sizeToFit];
    [self addSubview:placeHolderLabel];
    placeHolderLabel.font = [UIFont systemFontOfSize:font];

    self.font = [UIFont systemFontOfSize:font];
    [self setValue:placeHolderLabel forKey:@"_placeholderLabel"];
}

- (void)setMaxlength:(int)maxlength {
    //获取正在输入的textView
    NSString *toBeString = self.text;
    NSString *lang = [self.textInputMode primaryLanguage];
    if ([lang isEqualToString:@"zh-Hans"]) { // 简体中文输入，包括简体拼音，健体五笔，简体手写
        UITextRange *selectedRange = [self markedTextRange];
        //获取高亮部分
        UITextPosition *position = [self positionFromPosition:selectedRange.start offset:0];
        // 没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if (!position) {
            if (toBeString.length > maxlength) {
                
                self.text = [toBeString substringToIndex:maxlength];
                [self endEditing:YES];
            }
        }
        // 有高亮选择的字符串，则暂不对文字进行统计和限制
        else{ 
        }
    }
    // 中文输入法以外的直接对其统计限制即可，不考虑其他语种情况
    else{
        if (toBeString.length > maxlength) {
            self.text = [toBeString substringToIndex:maxlength];
            [self endEditing:YES];
        }
    }
}

@end
