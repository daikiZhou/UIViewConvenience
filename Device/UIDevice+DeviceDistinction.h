//
//  UIDevice+DeviceDistinction.h
//  Fujita
//
//  Created by Zhou Yifei on 7/12/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, DeviceType) {
    DeviceTypePad,
    DeviceTypePhone,
    DeviceTypeUnknown
};

@interface UIDevice (DeviceDistinction)

- (DeviceType)deviceType;

@end
