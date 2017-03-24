//
//  TabBarViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingCart.h"
#import "DrinkTableViewController.h"
#import "ClothTableViewController.h"
#import "FoodTableViewController.h"
#import "FirstTableViewController.h"
#import "ItemListTableViewController.h"

@protocol MyTabBarControllerDelegate

//- (void) didSelect:(TabBarViewController*) tabBarController;

@end

@interface TabBarViewController : UITabBarController<UITabBarControllerDelegate,ClothTVDelegate,DrinkTVDelegate,FoodTVDelegate,ItemListTVDelegate,FirstTVDelegate>

@property (strong, nonatomic) ShoppingCart * shoppingCart;

@end
