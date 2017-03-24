//
//  TabBarViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
//    self.shoppingCart = [[ShoppingCart alloc]init];
    NSMutableArray<Products*>* productsArray = [[NSMutableArray alloc]init];
    self.shoppingCart = [[ShoppingCart alloc]initWithProductsArray:productsArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    // setting delegate
    if([viewController isMemberOfClass:[ClothTableViewController class]]) {
        ((ClothTableViewController*)viewController).delegate = self;
    }
    else if([viewController isMemberOfClass:[DrinkTableViewController class]]) {
        ((DrinkTableViewController*)viewController).delegate = self;
    }
    else if([viewController isMemberOfClass:[FoodTableViewController class]]) {
        ((FoodTableViewController*)viewController).delegate = self;
    }
    else if([viewController isMemberOfClass:[FirstTableViewController class]]) {
        ((FirstTableViewController*)viewController).delegate = self;
        //[(FirstTableViewController*)viewController caculatePrice];
    }
    else if([viewController isMemberOfClass:[ItemListTableViewController class]]) {
        ((ItemListTableViewController*)viewController).delegate = self;
        //[(ItemListTableViewController*)viewController  seeItems];
    }
}


- (NSMutableArray<Products*>*)seeItems
{
    return self.shoppingCart.productsArray;
}


- (void)addBuyClothItem:(Cloth*)cloth
{
    [self.shoppingCart addToShoppingCart:cloth];
}

- (void)addBuyDrinkItem:(Drinks*)drink
{
    [self.shoppingCart addToShoppingCart:drink];
}

- (void)addBuyFoodItem:(Food*)food
{
    [self.shoppingCart addToShoppingCart:food];
}

@end
