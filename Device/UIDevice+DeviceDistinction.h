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

/**
 Type of current device

 @return device type
 */
+ (DeviceType)deviceType;

/**
 Width Ratio based on TEST Device
 
 baseDevice = iPhone6 | iPad air
 
 ratio = currentDeviceScreenWidth / baseDeviceScreenWidth

 @return Width Ratio
 */
+ (CGFloat)deviceRatioWidth;

/**
 Height Ratio based on TEST Device

 baseDevice = iPhone6 | iPad air

 ratio = currentDeviceScreenHeight / baseDeviceScreenHeight

 @return Width Ratio
 */
+ (CGFloat)deviceRatioHeight;

@end
