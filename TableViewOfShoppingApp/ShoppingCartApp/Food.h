//
//  Food.h
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Products.h"

@interface Food : Products

@property int foodCalorie;
@property int foodSize;
@property (strong,nonatomic)NSArray *foodIngredients;

-(id)initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry foodCalorie:(int)foodCalorie foodSize:(int)foodSize foodIngredients:(NSArray*)foodIngredients;

-(float)totalAmountToPay;

@end
