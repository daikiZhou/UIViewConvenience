//
//  UIView+Size.m
//  Fujita
//
//  Created by Zhou Yifei on 8/9/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import "UIView+Size.h"

@implementation UIView (Size)

- (CGSize)size {
    return self.frame.size;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    [self setFrame:frame];
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    [self setFrame:frame];
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    [self setFrame:frame];
}

- (void)setSizeByCenter:(CGSize)sizeByCenter {
    CGRect frame = self.frame;
    CGPoint center = self.center;
    CGFloat x = center.x - sizeByCenter.width / 2;
    CGFloat y = center.y - sizeByCenter.height / 2;

    frame.origin.x = x;
    frame.origin.y = y;
    frame.size = sizeByCenter;

    [self setFrame:frame];
}

- (void)setWidthByRight:(CGFloat)widthByRight {
    CGRect frame = self.frame;

    frame.origin.x -= widthByRight - frame.size.width;
    frame.size.width = widthByRight;

    [self setFrame:frame];
}

- (void)setHeightByBottom:(CGFloat)heightByBottom {
    CGRect frame = self.frame;

    frame.origin.y -= heightByBottom - frame.size.height;
    frame.size.height = heightByBottom;

    [self setFrame:frame];
}

- (void)setWidthByCenter:(CGFloat)widthByCenter {
    CGRect frame = self.frame;
    CGPoint center = self.center;
    CGFloat x = center.x - widthByCenter / 2;

    frame.origin.x = x;
    frame.size.width = widthByCenter;

    [self setFrame:frame];
}

- (void)setHeightByCenter:(CGFloat)heightByCenter {
    CGRect frame = self.frame;
    CGPoint center = self.center;
    CGFloat y = center.y - heightByCenter / 2;

    frame.origin.y = y;
    frame.size.height = heightByCenter;

    [self setFrame:frame];
}

@end
