//
//  Lunch.h
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServeProtocol.h"

typedef NS_ENUM(NSUInteger, LunchType) {
    Borsh,
    SupPure,
    Svekolink,
};


NS_ASSUME_NONNULL_BEGIN

@interface Lunch : NSObject <ServeProtocol>

@property LunchType type;

@end

NS_ASSUME_NONNULL_END
