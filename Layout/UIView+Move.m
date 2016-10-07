//
//  UIView+Move.m
//  Fujita
//
//  Created by Zhou Yifei on 7/13/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import "UIView+Move.h"

#import "UIView+Edge.h"

#import "UIView+Size.h"

@implementation UIView (Move)

- (void)moveOriginTo:(CGPoint)point {
    [self setFrame:CGRectMake(point.x, point.y, self.width, self.height)];
}

- (void)moveCenterTo:(CGPoint)point {
    [self setCenter:point];
}

- (void)moveBy:(CGFloat)distance direction:(MoveDirection)direction {
    switch (direction) {
        case MoveUp:
            [self setFrame:CGRectOffset(self.frame, 0, -distance)];
            break;
        case MoveDown:
            [self setFrame:CGRectOffset(self.frame, 0, distance)];
            break;
        case MoveLeft:
            [self setFrame:CGRectOffset(self.frame, -distance, 0)];
            break;
        case MoveRight:
            [self setFrame:CGRectOffset(self.frame, distance, 0)];
            break;

        default:
            break;
    }
}

- (void)moveBy:(CGFloat)distance angle:(CGFloat)angle {
    CGFloat horizontalDistance = distance * sinf(angle * M_PI / 180);
    CGFloat verticleDistance = distance * cosf(angle * M_PI / 180);

    [self setFrame:CGRectOffset(self.frame, horizontalDistance, -verticleDistance)];
}

- (CGRect)rectMoveOriginTo:(CGPoint)point {
    return CGRectMake(point.x, point.y, self.width, self.height);
}

- (CGRect)rectMoveCenterTo:(CGPoint)point {
    return CGRectOffset(self.frame, point.x-self.leftX, point.y-self.topY);
}

- (CGRect)rectMoveBy:(CGFloat)distance direction:(MoveDirection)direction {
    switch (direction) {
        case MoveUp:
            return CGRectOffset(self.frame, 0, -distance);
            break;
        case MoveDown:
            return CGRectOffset(self.frame, 0, distance);
            break;
        case MoveLeft:
            return CGRectOffset(self.frame, -distance, 0);
            break;
        case MoveRight:
            return CGRectOffset(self.frame, distance, 0);
            break;

        default:
            return CGRectZero;
            break;
    }
}

- (CGRect)rectMoveBy:(CGFloat)distance angle:(CGFloat)angle {
    CGFloat horizontalDistance = distance * sinf(angle * M_PI / 180);
    CGFloat verticleDistance = distance * cosf(angle * M_PI / 180);

    return CGRectOffset(self.frame, horizontalDistance, -verticleDistance);
}

- (void)moveOutOfSuperViewTo:(MoveDirection)direction {
    NSAssert(self.superview!=nil, @"No Superview");

    CGFloat distance;
    switch (direction) {
        case MoveUp:
            distance = self.bottomY;
            break;
        case MoveDown:
            distance = self.superview.height - self.topY;
            break;
        case MoveLeft:
            distance = self.rightX;
            break;
        case MoveRight:
            distance = self.superview.width - self.leftX;
            break;

        default:
            break;
    }

    [self moveBy:distance direction:direction];
}

@end
