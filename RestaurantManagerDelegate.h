//
//  RestaurantManagerDelegate.h
//  PizzaRestaurant
//
//  Created by Alain  on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Kitchen;
@class Pizza; //telling the file not to worry about these objects

@protocol RestaurantManagerDelegate <NSObject>

@required
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings;

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
