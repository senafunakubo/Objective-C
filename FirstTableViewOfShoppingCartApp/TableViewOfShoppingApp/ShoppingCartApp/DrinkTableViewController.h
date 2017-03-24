//
//  DrinkTableViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Drinks.h"
#import "DrinkTableViewCell.h"

@protocol DrinkTVDelegate<NSObject>

-(void)addBuyDrinkItem:(Drinks*)drink;

@end

@interface DrinkTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) id<DrinkTVDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITableView *DrinkTableView;
@property (weak, nonatomic) UITextField *drinkIDTextField;
@property (weak, nonatomic) UITextField *drinkNameTextField;
@property (weak, nonatomic) UITextField *drinkPriceTextField;
@property (weak, nonatomic) UITextField *drinkMadeInCountryTextField;
@property (weak, nonatomic) UITextField *isDrinkDietTextField;
@property (weak, nonatomic) UITextField *drinkSizeTextField;
@property (strong, nonatomic) Drinks * drink;


- (IBAction)AddDrinkItem:(UIButton *)sender;
//- (IBAction)CancelToSeeDrinkDetail:(UIButton *)sender;


@end
