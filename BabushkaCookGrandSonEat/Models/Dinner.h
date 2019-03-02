//
//  Dinner.h
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServeProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, DinnerType) {
    Lasanya,
    KotletkiPureshka,
    KuraGrechya,
};


@interface Dinner : NSObject <ServeProtocol>

@property DinnerType type;

@end

NS_ASSUME_NONNULL_END

