//
//  Products.m
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Products.h"

@implementation Products

-(id)initWithProductId:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry
{
    self = [super init];
    
    if(self)
    {
        self.productID = productID;
        self.productName = productName;
        self.productPrice = productPrice;
        self.productMadeInCountry = productMadeInCountry;
    }
    return self;
}


-(float)totalAmountToPay
{
    return self.productPrice;
}


@end
