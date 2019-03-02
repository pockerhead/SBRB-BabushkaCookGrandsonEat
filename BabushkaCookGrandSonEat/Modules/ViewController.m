//
//  ViewController.m
//  BabushkaCookGrandSonEat
//
//  Created by Артём Балашов on 28/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import "ViewController.h"
#import "Granny.h"
#import "GrandSon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Granny *granny = [Granny new];
    GrandSon *delegate = [GrandSon new];
    granny.delegate = delegate;
    
    [granny serveMealWithDate:[NSDate new]];
}


@end
