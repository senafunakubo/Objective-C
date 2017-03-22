//
//  FoodViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-09.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Food.h"

@protocol FoodViewDelegate <NSObject>

//@required
-(void)addBuyFoodItem:(Food*)food;

@end

@interface FoodViewController : UIViewController
@property (weak, nonatomic) id<FoodViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *foodIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodMadeInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodCalorieTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodSizeTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodIngredientsTextField;

@property (strong, nonatomic) Food * food;
@property (strong, nonatomic) NSString * foodIngredientsString;
@property (strong, nonatomic) NSArray * foodIngredientsArray;




- (IBAction)addFoodItem:(UIButton *)sender;

//cancel button
- (IBAction)CancelToSeeFoodDetail:(UIButton *)sender;


@end
