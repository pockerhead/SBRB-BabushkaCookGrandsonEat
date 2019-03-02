//
//  GrandSon.m
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import "GrandSon.h"
#import "Lunch.h"
#import "Breakfast.h"
#import "Dinner.h"

@implementation GrandSon

- (BOOL)shouldEatServe:(nonnull id<ServeProtocol>)serve {
    
    BOOL condition = YES;
    
    if ([serve.weight integerValue] > 2000) { //2 КГ еды серьезно?
        condition = NO;
    }
    
    if([serve isKindOfClass:[Lunch class]]) {
        Lunch *meal = serve;
        if (meal.type == Borsh) {
            condition = YES;
        } else if (meal.type == Svekolink) {
            condition = YES;
        } else if (meal.type == SupPure) {
            condition = NO;
        }
    }
    
    if([serve isKindOfClass:[Dinner class]]) {
        Dinner *meal = serve;
        if (meal.type == Lasanya) {
            condition = YES;
        } else if (meal.type == KotletkiPureshka) {
            condition = YES;
        } else if (meal.type == KuraGrechya) {
            condition = NO;
        }
    }
    
    if([serve isKindOfClass:[Breakfast class]]) {
        Breakfast *meal = serve;
        if (meal.type == Blinchiki) {
            condition = YES;
        } else if (meal.type == Yaichica) {
            condition = YES;
        } else if (meal.type == Tosty) {
            condition = NO;
        }
    }
    
    if (condition) {
        NSLog(@"Я буду есть %@, помой плиз посуду бааа!)", [serve class]);
    } else {
        NSLog(@"Я не буду есть %@, это фу)", [serve class]);
    }
    
    return condition;
}

@end
