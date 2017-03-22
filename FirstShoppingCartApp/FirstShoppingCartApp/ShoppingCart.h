//
//  ShoppingCart.h
//  exam
//
//  Created by Sena Funakubo on 2017-03-08.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Products.h"

@interface ShoppingCart : NSObject

@property (strong, nonatomic)NSMutableArray<Products*>* productsArray;

- (id)initWithProductsArray:(NSMutableArray<Products*>*)productsArray;


-(void)addToShoppingCart:(Products*)product;
-(void)showItemsName;
-(float)calculateTotalCost;

@end
