//
//  ShoppingCart.m
//  exam
//
//  Created by Sena Funakubo on 2017-03-08.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ShoppingCart.h"

@implementation ShoppingCart

- (id)initWithProductsArray:(NSMutableArray<Products*>*)productsArray
{
    self =[super init];
    if(self)
    {
        self.productsArray = productsArray;
    }
    return self;
}


//Methods

-(void)addToShoppingCart:(Products*)product
{
    [self.productsArray addObject:product];
}


-(void)showItemsName
{
    for(int i=0; i<self.productsArray.count; i++)
    {
        NSLog(@"You put a %@ to your cart.",self.productsArray[i].productName);
    }
    
}

-(float)calculateTotalCost{
    float totalPriceOfProducts = 0.0;
    for(int i=0; i<self.productsArray.count; i++)
    {
        totalPriceOfProducts = totalPriceOfProducts + self.productsArray[i].productPrice;
        
    }

  NSLog(@"Total : $ %f",totalPriceOfProducts);
    
    return totalPriceOfProducts;
}

@end
