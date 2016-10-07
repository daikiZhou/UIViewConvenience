//
//  KeyboardToggleHelper.m
//  Fujita
//
//  Created by Zhou Yifei on 7/20/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import "KeyboardToggleHelper.h"

static inline UIViewAnimationOptions animationCurveToOption(UIViewAnimationCurve curve) {
    return (curve<<16);
}

@implementation KeyboardToggleHelper

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(keyboardWillShow:)
                                                     name:UIKeyboardWillShowNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(keyboardWillHide:)
                                                     name:UIKeyboardWillHideNotification
                                                   object:nil];
    }
    return self;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillShowNotification
                                                  object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillHideNotification
                                                  object:nil];
}

- (void)keyboardWillShow:(NSNotification *)notification {
    if (!self.delegate) {
        return;
    }

    NSDictionary *info = [notification userInfo];
    double animationDuration = [[info objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    UIViewAnimationCurve animationCurve = [[info objectForKey:UIKeyboardAnimationCurveUserInfoKey] integerValue];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    CGFloat kbHeight = kbSize.height;

    if ([self.delegate respondsToSelector:@selector(keyboardWillShow:
                                                    height:
                                                    duration:
                                                    optionsCurve:)]) {
        [self.delegate keyboardWillShow:notification
                                 height:kbHeight
                               duration:animationDuration
                           optionsCurve:animationCurveToOption(animationCurve)];
    }
}

- (void)keyboardWillHide:(NSNotification *)notification {
    if (!self.delegate) {
        return;
    }

    NSDictionary *info = [notification userInfo];
    double animationDuration = [[info objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    UIViewAnimationCurve animationCurve = [[info objectForKey:UIKeyboardAnimationCurveUserInfoKey] unsignedLongValue];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    CGFloat kbHeight = kbSize.height;

    if ([self.delegate respondsToSelector:@selector(keyboardWillHide:
                                                    height:
                                                    duration:
                                                    optionsCurve:)]) {
        [self.delegate keyboardWillHide:notification
                                 height:kbHeight
                               duration:animationDuration
                           optionsCurve:animationCurveToOption(animationCurve)];
    }
}

@end
