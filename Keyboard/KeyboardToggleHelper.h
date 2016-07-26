//
//  KeyboardToggleHelper.h
//  Fujita
//
//  Created by Zhou Yifei on 7/20/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol KeyboardToggleDelegate <NSObject>

@optional
- (void)keyboardWillShow:(NSNotification *)notification
                  height:(CGFloat)height
                duration:(double)duration
            optionsCurve:(UIViewAnimationOptions)curve;
- (void)keyboardWillHide:(NSNotification *)notification
                  height:(CGFloat)height
                duration:(double)duration
            optionsCurve:(UIViewAnimationOptions)curve;

@end

@interface KeyboardToggleHelper : NSObject

@property (nonatomic, weak) id<KeyboardToggleDelegate> delegate;

@end
