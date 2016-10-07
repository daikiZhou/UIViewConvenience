//
//  UIDevice+DeviceDistinction.m
//  Fujita
//
//  Created by Zhou Yifei on 7/12/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import "UIDevice+DeviceDistinction.h"

#import "UIView+Size.h"

@implementation UIDevice (DeviceDistinction)

+ (DeviceType)deviceType {
    static DeviceType type = DeviceTypeUnknown;
    if (type == DeviceTypeUnknown) {
        switch (UI_USER_INTERFACE_IDIOM()) {
            case UIUserInterfaceIdiomPhone:
                type = DeviceTypePhone;
                break;
            case UIUserInterfaceIdiomPad:
                type = DeviceTypePad;
                break;
                
            default:
                break;
        }
    }
    NSAssert(type != DeviceTypeUnknown, @"Unknown Device Type");
    return type;
}

+ (CGFloat)deviceRatioWidth {
    static CGFloat ratio = 0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        CGFloat padWidth = 768;
        CGFloat phone6Width = 375;
        switch ([UIDevice deviceType]) {
            case DeviceTypePad:
                ratio = screenSize().width / padWidth;
                break;
            case DeviceTypePhone:
                ratio = screenSize().width / phone6Width;
                break;

            default:
                break;
        }
    });

    return ratio;
}

+ (CGFloat)deviceRatioHeight {
    static CGFloat ratio = 0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        CGFloat padHeight = 1024;
        CGFloat phone6Height = 667;
        switch ([UIDevice deviceType]) {
            case DeviceTypePad:
                ratio = screenSize().height / padHeight;
                break;
            case DeviceTypePhone:
                ratio = screenSize().height / phone6Height;
                break;

            default:
                ratio = 0;
                break;
        }
    });
    
    return ratio;
}

@end
