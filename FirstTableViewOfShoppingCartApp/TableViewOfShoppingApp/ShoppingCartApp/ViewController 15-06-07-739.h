//
//  ViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-08.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Products.h"
#import "Drinks.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"

#import "DrinkViewController.h"
#import "FoodViewController.h"
#import "ClothViewController.h"
#import "ItemlistViewController.h"


@interface ViewController : UIViewController<DrinkViewDelegate,FoodViewDelegate,ClothViewDelegate,ItemListDelegate>

@property (weak, nonatomic) IBOutlet UILabel *totalAmount;
@property (strong, nonatomic) ShoppingCart * shoppingCart;


//- (void)addToShoppingCart:(Products*)item;
- (void)viewWillAppear:(BOOL)animated;

@end


