//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Alain  on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray*)toppings {
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings = toppings;
        
        NSLog(@"size is %u", self.size);
    }
    return self;
}

+ (instancetype)pizzaWithSize:(PizzaSize)size andToppings:(NSArray*)toppings {
    return [[Pizza alloc] initWithSize:size andToppings:toppings];
}

@end

