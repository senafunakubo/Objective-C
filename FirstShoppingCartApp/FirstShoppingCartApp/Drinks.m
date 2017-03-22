//
//  Drinks.m
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Drinks.h"

@implementation Drinks

-(id)initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry isDrinkDiet:(BOOL)isDrinkDiet drinkSize:(int)drinkSize
{
    self = [super initWithProductId:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry];
    
    if(self)
    {
        self.isDrinkDiet = isDrinkDiet;
        self.drinkSize = drinkSize;
    }
    return self;
}


@end
