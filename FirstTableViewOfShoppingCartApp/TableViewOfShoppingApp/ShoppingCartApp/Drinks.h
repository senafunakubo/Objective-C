//
//  Drinks.h
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Products.h"

@interface Drinks : Products

@property BOOL isDrinkDiet;
@property int drinkSize;

-(id)initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry isDrinkDiet:(BOOL)isDrinkDiet drinkSize:(int)drinkSize;


@end
