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

/**
 Called when keyboard will show

 @param notification notification (if you dont need more information, ignore this)
 @param height       keyboard height
 @param duration     animation duration
 @param curve        animation curve
 */
- (void)keyboardWillShow:(NSNotification *)notification
                  height:(CGFloat)height
                duration:(double)duration
            optionsCurve:(UIViewAnimationOptions)curve;
/**
 Called when keyboard will hide

 @param notification notification (if you dont need more information, ignore this)
 @param height       keyboard height
 @param duration     animation duration
 @param curve        animation curve
 */
- (void)keyboardWillHide:(NSNotification *)notification
                  height:(CGFloat)height
                duration:(double)duration
            optionsCurve:(UIViewAnimationOptions)curve;

@end

@interface KeyboardToggleHelper : NSObject

/**
 delegate to receive keyboard movement
 */
@property (nonatomic, weak) id<KeyboardToggleDelegate> delegate;

@end
