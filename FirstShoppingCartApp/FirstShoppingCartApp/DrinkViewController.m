//
//  DrinkViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-09.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "DrinkViewController.h"
#import "Drinks.h"

@interface DrinkViewController ()

@end

@implementation DrinkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Drinks* drinks = [[Drinks alloc]initWithProductID:(int)(self.drinkIDTextField.text.integerValue)
                                          productName:self.drinkNameTextField.text
                                         productPrice:self.drinkPriceTextField.text.floatValue
                                 productMadeInCountry:self.drinkMadeInCountryTextField.text
                                          isDrinkDiet:self.isDrinkDietTextField.text.boolValue
                                            drinkSize:(int)(self.drinkSizeTextField.text.integerValue)];
    self.drinks = drinks;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)AddDrinkItem:(UIButton *)sender {
    self.drinks.productID = (int)(self.drinkIDTextField.text.integerValue);
    self.drinks.productName = self.drinkNameTextField.text;
    self.drinks.productPrice = self.drinkPriceTextField.text.floatValue;
    self.drinks.productMadeInCountry = self.drinkMadeInCountryTextField.text;
    self.drinks.isDrinkDiet = self.isDrinkDietTextField.text.boolValue;
    self.drinks.drinkSize = (int)(self.drinkSizeTextField.text.integerValue);
    
    [self.delegate addBuyDrinkItem:self.drinks];
    
    //close
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (IBAction)CancelToSeeDrinkDetail:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
