//
//  UIView+Size.h
//  Fujita
//
//  Created by Zhou Yifei on 8/9/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import <UIKit/UIKit.h>

static inline CGRect screenFrame() {
    return [UIScreen mainScreen].bounds;
}
static inline CGSize screenSize() {
    return screenFrame().size;
}

@interface UIView (Size)

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign, getter=width) CGFloat widthByRight;
@property (nonatomic, assign, getter=height) CGFloat heightByBottom;

@property (nonatomic, assign, getter=width) CGFloat widthByCenter;
@property (nonatomic, assign, getter=height) CGFloat heightByCenter;

@property (nonatomic, assign, getter=size) CGSize sizeByCenter;

@end
