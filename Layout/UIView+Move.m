//
//  UIView+Move.m
//  Fujita
//
//  Created by Zhou Yifei on 7/13/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import "UIView+Move.h"

#import "UIView+Edge.h"

@implementation UIView (Move)

- (void)moveOriginTo:(CGPoint)point {
    [self setFrame:CGRectMake(point.x, point.y, self.frame.size.width, self.frame.size.height)];
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

- (void)moveOutOfSuperViewTo:(MoveDirection)direction {
    NSAssert(self.superview!=nil, @"No Superview");

    CGFloat distance;
    switch (direction) {
        case MoveUp:
            distance = self.bottomY;
            break;
        case MoveDown:
            distance = self.superview.bounds.size.height - self.topY;
            break;
        case MoveLeft:
            distance = self.rightX;
            break;
        case MoveRight:
            distance = self.superview.bounds.size.width - self.leftX;
            break;

        default:
            break;
    }

    [self moveBy:distance direction:direction];
}

@end
