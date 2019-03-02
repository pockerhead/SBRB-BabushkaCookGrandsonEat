//
//  Breakfast.h
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServeProtocol.h"

typedef NS_ENUM(NSUInteger, BreakfastType) {
    Yaichica = 0,
    Tosty = 1,
    Blinchiki = 2,
};

NS_ASSUME_NONNULL_BEGIN

@interface Breakfast : NSObject <ServeProtocol>

@property BreakfastType type;

@end

NS_ASSUME_NONNULL_END
