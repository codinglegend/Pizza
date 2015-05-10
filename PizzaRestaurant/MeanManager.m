//
//  MeanManager.m
//  PizzaRestaurant
//
//  Created by Alain  on 2015-05-09.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "MeanManager.h"
#import "Kitchen.h"

@implementation MeanManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings{
    
    BOOL makePizzaFlag = YES;
    
//    int foo = 5; follow this format for the above, no brackets when declaring variable
    
    for(NSString* topping in toppings){
        if ([topping isEqualToString:@"anchovies"]) {
            makePizzaFlag = NO;
        }
    }
    return makePizzaFlag;
}

@end
