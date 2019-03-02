//
//  ServeProtocol.h
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ServeProtocol <NSObject>

@property (strong, atomic, nonnull) NSNumber *weight;

@end

NS_ASSUME_NONNULL_END
