//
//  UILabel+Category.m
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import "UILabel+Category.h"
#import "ZTCommon.h"

@implementation UILabel (Category)

/**
 frame
 */
-(UILabel *(^)(CGRect))zt_frame {
    kWeakSelf(self);
    return ^UILabel *(CGRect frame) {
        weakself.frame = frame;
        return weakself;
    };
}

/**
 test
 */
-(UILabel *(^)(NSString *))zt_text {
    kWeakSelf(self);
    return ^UILabel *(NSString *text) {
        weakself.text = text;
        return weakself;
    };
}

/**
 文字颜色
 */
-(UILabel *(^)(UIColor *))zt_textColor {
    kWeakSelf(self);
    return ^UILabel *(UIColor *color) {
        weakself.textColor = color;
        return weakself;
    };
}

/**
 文字大小
 */
-(UILabel *(^)(CGFloat))zt_fontSize {
    kWeakSelf(self);
    return ^UILabel *(CGFloat fontSize) {
        weakself.font = [UIFont systemFontOfSize:fontSize];
        return weakself;
    };
}

/**
 粗体文字大小
 */
-(UILabel *(^)(CGFloat))zt_boldFontSize {
    kWeakSelf(self);
    return ^UILabel *(CGFloat fontSize) {
        weakself.font = [UIFont boldSystemFontOfSize:fontSize];
        return weakself;
    };
}

/**
 aligment属性
 */
-(UILabel *(^)(NSTextAlignment))zt_aligment {
    kWeakSelf(self);
    return ^UILabel *(NSTextAlignment aligment) {
        weakself.textAlignment = aligment;
        return weakself;
    };
}

/**
 lines属性
 */
-(UILabel *(^)(int))zt_numLines {
    kWeakSelf(self);
    return ^UILabel *(int numLines) {
        weakself.numberOfLines = numLines;
        return weakself;
    };
}

/**
 背景色
 */
-(UILabel *(^)(UIColor *))zt_backgroundColor {
    kWeakSelf(self);
    return ^UILabel *(UIColor *backgroundColor) {
        weakself.backgroundColor = backgroundColor;
        return weakself;
    };
}


@end
