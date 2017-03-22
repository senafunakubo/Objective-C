//
//  FirstViewController.h
//  FirstShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-20.
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

@interface FirstViewController : UIViewController<DrinkViewDelegate, FoodViewDelegate, ClothViewDelegate,ItemListDelegate>

@property (weak, nonatomic) IBOutlet UILabel *totalAmount;
@property (strong, nonatomic) ShoppingCart * shoppingCart;

- (void)viewWillAppear:(BOOL)animated;
@end
