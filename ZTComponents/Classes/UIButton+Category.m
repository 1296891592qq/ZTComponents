//
//  UIButton+Category.m
//  ZTSmartHome
//
//  Created by ztgm on 2019/11/15.
//  Copyright © 2019 ztgm. All rights reserved.
//

#import "UIButton+Category.h"

#import "ZTCommon.h"


@implementation UIButton (Category)

-(UIButton *(^)(CGRect))zt_frame {
    kWeakSelf(self);
    return ^UIButton *(CGRect frame) {
        weakself.frame = frame;
        return weakself;
    };
}

-(UIButton *(^)(UIColor *))zt_norTitleColor {
    kWeakSelf(self);
    return ^UIButton *(UIColor *color) {
        [weakself setTitleColor:color forState:UIControlStateNormal];
        return weakself;
    };
}

-(UIButton *(^)(UIColor *))zt_selTitleColor {
    kWeakSelf(self);
    return ^UIButton *(UIColor *color) {
        [weakself setTitleColor:color forState:UIControlStateSelected];
        return weakself;
    };
}

-(UIButton *(^)(CGFloat))zt_fontSize {
    kWeakSelf(self);
    return ^UIButton *(CGFloat fontSize) {
        weakself.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        return weakself;
    };
}

-(UIButton *(^)(CGFloat))zt_boldFontSize {
    kWeakSelf(self);
    return ^UIButton *(CGFloat fontSize) {
        weakself.titleLabel.font = [UIFont boldSystemFontOfSize:fontSize];
        return weakself;
    };
}

-(UIButton *(^)(NSTextAlignment))zt_aligment {
    kWeakSelf(self);
    return ^UIButton *(NSTextAlignment aligment) {
        weakself.titleLabel.textAlignment = aligment;
        return weakself;
    };
}

-(UIButton *(^)(int))zt_numLines {
    kWeakSelf(self);
    return ^UIButton *(int numLines) {
        weakself.titleLabel.numberOfLines = numLines;
        return weakself;
    };
}

-(UIButton *(^)(int))zt_tag {
    kWeakSelf(self);
    return ^UIButton *(int tag) {
        weakself.tag = tag;
        return weakself;
    };
}

-(UIButton *(^)(UIColor *))zt_backgroundColor {
    kWeakSelf(self);
    return ^UIButton *(UIColor *color) {
        weakself.backgroundColor = color;
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_norTitle {
    kWeakSelf(self);
    return ^UIButton *(NSString *text) {
        [weakself setTitle:text forState:UIControlStateNormal];
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_selTitle {
    kWeakSelf(self);
    return ^UIButton *(NSString *text) {
        [weakself setTitle:text forState:UIControlStateSelected];
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_norImg {
    kWeakSelf(self);
    return ^UIButton *(NSString *img) {
        [weakself setImage:[UIImage imageNamed:img] forState:UIControlStateNormal];
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_selImg {
    kWeakSelf(self);
    return ^UIButton *(NSString *img) {
        [weakself setImage:[UIImage imageNamed:img] forState:UIControlStateSelected];
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_heightImg {
    kWeakSelf(self);
    return ^UIButton *(NSString *img) {
        [weakself setImage:[UIImage imageNamed:img] forState:UIControlStateHighlighted];
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_norBackimg {
    kWeakSelf(self);
    return ^UIButton *(NSString *img) {
        [weakself setBackgroundImage:[UIImage imageNamed:img] forState:UIControlStateNormal];
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_selBackimg {
    kWeakSelf(self);
    return ^UIButton *(NSString *img) {
        [weakself setBackgroundImage:[UIImage imageNamed:img] forState:UIControlStateSelected];
        return weakself;
    };
}

-(UIButton *(^)(NSString *))zt_heightBackimg {
    kWeakSelf(self);
    return ^UIButton *(NSString *img) {
        [weakself setBackgroundImage:[UIImage imageNamed:img] forState:UIControlStateHighlighted];
        return weakself;
    };
}

- (void)layoutWithStatus:(ZTLayoutStatus)status andMargin:(CGFloat)margin{
    CGFloat imgWidth = self.imageView.bounds.size.width;
    CGFloat imgHeight = self.imageView.bounds.size.height;
    CGFloat labWidth = self.titleLabel.bounds.size.width;
    CGFloat labHeight = self.titleLabel.bounds.size.height;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (labWidth < frameSize.width) {
        labWidth = frameSize.width;
    }
    CGFloat kMargin = margin/2.0;
    switch (status) {
        case ZTLayoutStatusNormal://图左字右
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -kMargin, 0, kMargin)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, kMargin, 0, -kMargin)];
            break;
        case ZTLayoutStatusImageRight://图右字左
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, labWidth + kMargin, 0, -labWidth - kMargin)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth - kMargin, 0, imgWidth + kMargin)];
            break;
        case ZTLayoutStatusImageTop://图上字下
            [self setImageEdgeInsets:UIEdgeInsetsMake(0,0, labHeight + margin, -labWidth)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(imgHeight + margin, -imgWidth, 0, 0)];
            break;
        case ZTLayoutStatusImageBottom://图下字上
            [self setImageEdgeInsets:UIEdgeInsetsMake(labHeight + margin,0, 0, -labWidth)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, imgHeight + margin, 0)];
            
            break;
        default:
            break;
    }
}


@end
