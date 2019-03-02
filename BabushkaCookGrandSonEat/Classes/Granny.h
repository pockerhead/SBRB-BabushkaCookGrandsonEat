//
//  Granny.h
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//
#import "ServeProtocol.h"
#import "EatingProtocol.h"

#ifndef Granny_h
#define Granny_h

@interface Granny : NSObject 

@property id<EatingProtocol> delegate;

- (id<ServeProtocol>)serveMealWithDate:(NSDate *)date;

@end

#endif /* Granny_h */
