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

- (void)setPlaceholder:(NSString *)placeholder placeColor:(UIColor *)color font:(CGFloat)font;


//[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textViewEditChanged:) name:@"UITextViewTextDidChangeNotification" object:self];
- (void)setMaxlength:(int)maxlength;

@end

NS_ASSUME_NONNULL_END
