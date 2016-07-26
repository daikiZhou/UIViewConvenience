//
//  UIDevice+DeviceDistinction.m
//  Fujita
//
//  Created by Zhou Yifei on 7/12/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import "UIDevice+DeviceDistinction.h"

@implementation UIDevice (DeviceDistinction)

- (DeviceType)deviceType {
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

@end
