//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Alain  on 2015-05-08.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Small,
    Medium,
    Large
} PizzaSize;


@interface Pizza : NSObject

@property(nonatomic) NSArray* toppings;
@property (nonatomic, assign) PizzaSize size;

+ (instancetype)pizzaWithSize:(PizzaSize)size andToppings:(NSArray*)toppings;
- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray*)toppings;

@end
