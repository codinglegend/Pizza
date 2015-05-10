//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [[Kitchen alloc]init];
        Manager *manager = [[Manager alloc] init];
        restaurantKitchen.delegate = manager; // tell the kitchen that its delegate is manager

        
        while (YES) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *sizeCommand = commandWords.firstObject;
            
            PizzaSize desiredSize; //come back to this when sending to kitchen
        
            if ([sizeCommand isEqualToString:@"small"]) {
                desiredSize = Small;
            } else if ([sizeCommand isEqualToString:@"medium"]) {
                desiredSize = Medium;
            } else if ([sizeCommand isEqualToString:@"large"]) {
                desiredSize = Large;
            }
            
            // copy the commandWords NSArray so it's a NSMutableArray.
            NSMutableArray *desiredToppings = [commandWords mutableCopy];
        
            
            // Remove the first object of the mutable copy of the commandWords
            [desiredToppings removeObjectAtIndex:0];
            
//            Kitchen *kitchen =  [[Kitchen alloc] init];
//            
//            [kitchen make];
            
            
            Pizza *newPizza = [restaurantKitchen makePizzaWithSize:desiredSize toppings:desiredToppings];
            
//            Pizza *homemadePizza = [[Pizza alloc] initWithSize:desiredSize andToppings:toppings];
//
            // here the kitchen tells us we made a pizza of size homadePizza etc etc
            
            
//            NSLog(@"size is %@", newPizza1.size);
            
//            Pizza *newPizza = [[Pizza alloc] init];
//            newPizza.size = Small;
//            //newPizza.toppings = @[@"cheese", @"ham"];
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

