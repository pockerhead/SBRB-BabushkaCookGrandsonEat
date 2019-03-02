//
//  Granny.m
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Granny.h"
#import "Breakfast.h"
#import "Dinner.h"
#import "Lunch.h"

@implementation Granny

- (nullable id<ServeProtocol>)serveMealWithDate:(NSDate *)date {
    id<ServeProtocol> meal = nil;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    calendar.timeZone = [NSTimeZone localTimeZone];
    NSInteger hour = [calendar component: NSCalendarUnitHour fromDate:date];
    if (hour >= 14 && hour <= 16) {
        NSLog(@"Готовлю обед... \n Время:%ld часов", (long)hour);
        Lunch *lunch = [Lunch new];
        lunch.weight = @1000;
        lunch.type = Borsh;
        meal = lunch;
    } else if (hour >= 18 && hour <= 21) {
        NSLog(@"Готовлю ужин... \n Время:%ld часов", (long)hour);
        Dinner *diner = [Dinner new];
        diner.weight = @(2100); // !!!
        diner.type = Lasanya;
        meal = diner;
    } else if (hour >= 10 && hour <= 12) {
        NSLog(@"Готовлю завтрак... \n Время:%ld часов", (long)hour);
        Breakfast *breakfast = [Breakfast new];
        breakfast.weight = @1000;
        breakfast.type = Yaichica;
        meal = breakfast;
    } else {
        NSLog(@"ЛАВОЧКА ЗАКРЫТА!, ты время видел?? \n Время:%ld часов", (long)hour);
    }
    
    if (self.delegate) {
        [self.delegate shouldEatServe:meal];
    }
    
    return meal;
}

@end
