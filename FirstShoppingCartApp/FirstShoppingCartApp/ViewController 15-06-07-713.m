//
//  ViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-08.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ViewController.h"
#import "ClothViewController.h"

@interface ViewController () 


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSMutableArray<Products*>* productsArray = [[NSMutableArray alloc]init];
    
    self.shoppingCart = [[ShoppingCart alloc]initWithProductsArray:productsArray];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addBuyDrinkItem:(Drinks*)drink
{
    [self.shoppingCart addToShoppingCart:drink];
}

- (void)addBuyFoodItem:(Food*)food
{
    [self.shoppingCart addToShoppingCart:food];
}

- (void)addBuyClothItem:(Cloth*)cloth
{
    [self.shoppingCart addToShoppingCart:cloth];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"drinkView"])
    {
        ((DrinkViewController*)segue.destinationViewController).delegate = self;
    }
    else if([[segue identifier] isEqualToString:@"foodView"])
    {
        ((FoodViewController*)segue.destinationViewController).delegate = self;
    }
    else if([[segue identifier] isEqualToString:@"clothView"])
    {
        ((ClothViewController*)segue.destinationViewController).delegate = self;
    }
    else if([[segue identifier] isEqualToString:@"seeItemsView"])
    {
        ((ItemlistViewController*)segue.destinationViewController).delegate = self;
    }
}


- (NSMutableArray*)seeItems
{
    NSMutableArray * productNameArray = [[NSMutableArray alloc]init];
    for(int i=0; i<self.shoppingCart.productsArray.count; i++)
    {
        NSLog(@"%@",self.shoppingCart.productsArray[i].productName);
        productNameArray[i] = self.shoppingCart.productsArray[i].productName;
    }
    return productNameArray;
}


- (void)viewWillAppear:(BOOL)animated
{
    float amount = [self.shoppingCart calculateTotalCost];
    self.totalAmount.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%.2f", amount]];
}


@end
