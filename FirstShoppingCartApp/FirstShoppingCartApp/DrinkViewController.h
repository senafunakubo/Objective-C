//
//  DrinkViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-09.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Products.h"
@class Drinks;

@protocol DrinkViewDelegate <NSObject>

//@required
-(void)addBuyDrinkItem:(Drinks*)drink;

@end


@interface DrinkViewController : UIViewController

@property (weak, nonatomic) id<DrinkViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *drinkIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkMadeInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *isDrinkDietTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkSizeTextField;
@property (strong,nonatomic) Drinks* drinks;


//DONE button
- (IBAction)AddDrinkItem:(UIButton *)sender;

//cancel button
- (IBAction)CancelToSeeDrinkDetail:(UIButton *)sender;


@end
