//
//  UIView+Edge.m
//  Fujita
//
//  Created by Zhou Yifei on 7/13/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import "UIView+Edge.h"

@implementation UIView (Edge)

- (CGFloat)leftX {
    return (self.frame.origin.x);
}

- (CGFloat)rightX {
    return (self.frame.origin.x + self.width);
}

- (CGFloat)topY {
    return (self.frame.origin.y);
}

- (CGFloat)bottomY {
    return (self.frame.origin.y + self.height);
}

- (CGFloat)width {
    return (self.bounds.size.width);
}

- (CGFloat)height {
    return (self.bounds.size.height);
}

- (CGPoint)endLeftTop {
    return self.frame.origin;
}

- (void)setEndLeftTop:(CGPoint)leftTop {
    CGFloat offsetX = leftTop.x - self.leftX;
    CGFloat offsetY = leftTop.y - self.topY;
    [self setFrame:CGRectOffset(self.frame, offsetX, offsetY)];
}

- (CGPoint)endRightTop {
    return CGPointMake(self.rightX, self.topY);
}

- (void)setEndRightTop:(CGPoint)endRightTop {
    CGFloat offsetX = endRightTop.x - self.width - self.leftX;
    CGFloat offsetY = endRightTop.y - self.topY;
    [self setFrame:CGRectOffset(self.frame, offsetX, offsetY)];
}

- (CGPoint)endLeftBottom {
    return CGPointMake(self.leftX, self.bottomY);
}

- (void)setEndLeftBottom:(CGPoint)endLeftBottom {
    CGFloat offsetX = endLeftBottom.x - self.leftX;
    CGFloat offsetY = endLeftBottom.y - self.height - self.topY;
    [self setFrame:CGRectOffset(self.frame, offsetX, offsetY)];
}

- (CGPoint)endRightBottm {
    return CGPointMake(self.rightX, self.bottomY);
}

- (void)setEndRightBottm:(CGPoint)endRightBottm {
    CGFloat offsetX = endRightBottm.x - self.width - self.leftX;
    CGFloat offsetY = endRightBottm.y - self.height - self.topY;
    [self setFrame:CGRectOffset(self.frame, offsetX, offsetY)];
}

@end
