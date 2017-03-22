//
//  Food.m
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Food.h"

@implementation Food

-(id)initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry foodCalorie:(int)foodCalorie foodSize:(int)foodSize foodIngredients:(NSArray*)foodIngredients;
{
    self = [super initWithProductId:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry];
    
    if(self)
    {
        self.foodCalorie = foodCalorie;
        self.foodSize = foodSize;
        self.foodIngredients = foodIngredients;
    }
    return self;
}

-(float)totalAmountToPay
{
    return self.productPrice * self.foodSize;
}

@end
