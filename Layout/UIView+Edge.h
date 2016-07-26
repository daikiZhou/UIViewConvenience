//
//  UIView+Edge.h
//  Fujita
//
//  Created by Zhou Yifei on 7/13/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import <UIKit/UIKit.h>

static inline CGRect screenFrame() {
    return [UIScreen mainScreen].bounds;
}
static inline CGSize screenSize() {
    return screenFrame().size;
}

@interface UIView (Edge)

@property (nonatomic, assign) CGPoint endLeftTop;
@property (nonatomic, assign) CGPoint endLeftBottom;
@property (nonatomic, assign) CGPoint endRightTop;
@property (nonatomic, assign) CGPoint endRightBottm;

- (CGFloat)leftX;
- (CGFloat)rightX;

- (CGFloat)topY;
- (CGFloat)bottomY;

- (CGFloat)width;
- (CGFloat)height;

@end
