//
//  Search.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Search.h"
#import "findFood.h"

@implementation Search

-(id) initWithFood:(NSString*)food place:(NSString*)place
{
    //Step1: memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self)
    {
        self.food = food;
        self.place = place;
//        self.findFood = findFood;
    }
    return self;
}


//methods (APIs)
-(void) initSearchWithNewFood:(NSString*)newFood newPlace:(NSString*)newPlace findNewFood:(NSMutableArray<findFood*>*)findNewFood
{
    self.food = newFood;
    self.place = newPlace;
    self.findFood = findNewFood;
}


-(void) printSearch
{
    NSLog(@"\n===============================================\n");
    
    NSLog(@"Yelp searched the food of %@\n", self.food);
    NSLog(@"Yelp searched the place which is located around %@\n", self.place);
    
    NSLog(@"\n===============================================\n");
    
}

-(NSMutableArray<findFood*>*) Results:(Search*)findFood amount:(int)numberOfRecommendations
{
   return NULL;
}

@end
