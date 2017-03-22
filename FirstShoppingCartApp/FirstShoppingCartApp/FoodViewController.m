//
//  FoodViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-09.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "FoodViewController.h"

@interface FoodViewController ()

@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//
//    -(id)initWithProductId:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry foodCalorie:(int)foodCalorie foodSize:(int)foodSize foodIngredients:(NSArray*)foodIngredients;

    
    Food * food = [[Food alloc]initWithProductID:(int)(self.foodIDTextField.text.integerValue)
                                productName:self.foodNameTextField.text
                                    productPrice:self.foodPriceTextField.text.floatValue
                              productMadeInCountry:self.foodMadeInCountryTextField.text
                                     foodCalorie:(int)(self.foodCalorieTextField.text.integerValue)
                                        foodSize:(int)(self.foodSizeTextField.text.integerValue)
                                 foodIngredients:self.foodIngredientsArray];
    
    self.food = food;
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

- (IBAction)addFoodItem:(UIButton *)sender {
    self.food.productID = (int)self.foodIDTextField.text.integerValue;
    self.food.productName = self.foodNameTextField.text;
    self.food.productPrice = self.foodPriceTextField.text.floatValue;
    self.food.productMadeInCountry = self.foodMadeInCountryTextField.text;
    self.food.foodCalorie = (int)(self.foodCalorieTextField.text.integerValue);
    self.food.foodSize = (int)self.foodSizeTextField.text.integerValue;
    self.food.foodIngredients = [self.foodIngredientsTextField.text componentsSeparatedByString:@","];
    
    [self.delegate addBuyFoodItem:self.food];
    
    //Close this screen
    [self dismissViewControllerAnimated:YES completion:nil];

    
}


- (IBAction)CancelToSeeFoodDetail:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
