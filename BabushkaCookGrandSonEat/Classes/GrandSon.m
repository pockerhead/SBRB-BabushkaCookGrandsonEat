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
        switch (meal.type) {
            case Borsh:
                condition = YES;
                break;
            case SupPure:
                condition = YES;
            case Svekolink:
                condition = NO;
            default:
                break;
        }
    }
    
    if([serve isKindOfClass:[Dinner class]]) {
        Dinner *meal = serve;
        switch (meal.type) {
            case KotletkiPureshka:
                condition = YES;
                break;
            case Lasanya:
                condition = YES;
            case KuraGrechya:
                condition = NO;
            default:
                break;
        }
    }
    
    if([serve isKindOfClass:[Breakfast class]]) {
        Breakfast *meal = serve;
        switch (meal.type) {
            case Yaichica:
                condition = YES;
                break;
            case Tosty:
                condition = YES;
            case Blinchiki:
                condition = NO;
            default:
                break;
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
