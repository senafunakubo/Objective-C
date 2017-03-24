//
//  FirstTableViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Cloth.h"
#import "Drinks.h"
#import "Food.h"
#import "Material.h"
#import "Products.h"
#import "ShoppingCart.h"

#import "FirstTableViewCell.h"
#import "ClothTableViewController.h"
#import "FoodTableViewController.h"
#import "DrinkTableViewController.h"
#import "ItemListTableViewController.h"

@protocol FirstTVDelegate<NSObject>


@end


@interface FirstTableViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, ClothTVDelegate,DrinkTVDelegate,FoodTVDelegate,ItemListTVDelegate>

@property (weak, nonatomic) id<FirstTVDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITableView *firstTableView;
@property (weak, nonatomic) IBOutlet UILabel *TotalAmount;

@property (strong, nonatomic) ShoppingCart * shoppingCart;


@end
