//
//  EatingProtocol.h
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServeProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol EatingProtocol <NSObject>

-(BOOL)shouldEatServe:(id<ServeProtocol>)serve;

@end

NS_ASSUME_NONNULL_END
