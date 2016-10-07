//
//  ViewCommon.h
//  Fujita
//
//  Created by Zhou Yifei on 7/14/16.
//  Copyright © 2016 KYOWA EXEO. All rights reserved.
//

#ifndef ViewCommon_h
#define ViewCommon_h

#import <UIKit/UIKit.h>

#import "UIDevice+DeviceDistinction.h"

#import "UIView+Edge.h"
#import "UIView+Move.h"
#import "UIView+Size.h"

static inline UIColor * RGB(CGFloat r, CGFloat g, CGFloat b) {
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}
static inline UIColor * RGBA(CGFloat r, CGFloat g, CGFloat b, CGFloat a) {
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}

#endif /* ViewCommon_h */
