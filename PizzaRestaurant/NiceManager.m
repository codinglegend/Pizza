//
//  NiceManager.m
//  PizzaRestaurant
//
//  Created by Alain  on 2015-05-09.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "NiceManager.h"
#import "RestaurantManagerDelegate.h"

@implementation NiceManager

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

@end
