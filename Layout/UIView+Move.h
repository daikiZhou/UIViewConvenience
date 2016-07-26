//
//  UIView+Move.h
//  Fujita
//
//  Created by Zhou Yifei on 7/13/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, MoveDirection) {
    MoveUp,
    MoveDown,
    MoveLeft,
    MoveRight
};

@interface UIView (Move)

- (void)moveOriginTo:(CGPoint)point;
- (void)moveCenterTo:(CGPoint)point;
- (void)moveBy:(CGFloat)distance direction:(MoveDirection)direction;
- (void)moveBy:(CGFloat)distance angle:(CGFloat)angle;
- (void)moveOutOfSuperViewTo:(MoveDirection)direction;

@end
