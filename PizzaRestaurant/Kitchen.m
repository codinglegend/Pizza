//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "RestaurantManagerDelegate.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    
    if (self.delegate != nil){
        if([self.delegate kitchenShouldUpgradeOrder:self]){
            size = Large;
        }
    }
        
    Pizza* pizza;
    
    // if there's no delegate, just make the pizza. OR, if there  anchovies under "toppings",
    
    if (self.delegate != nil){
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size toppings:toppings]){
            pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
        } else {
            pizza = nil;
        }
    } else {
        pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
    }

    if (self.delegate != nil){
        [self.delegate kitchenDidMakePizza:pizza];

    }
    
    return pizza;
}

//-(void)setDelegate:(id)delegate{
//    _delegate = delegate;


@end

