//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Alain  on 2015-05-09.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "RestaurantManagerDelegate.h" //.m files is where you want to import .h files in general

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings{
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    
}

@end
