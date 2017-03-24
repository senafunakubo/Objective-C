//
//  FoodTableViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Food.h"
#import "FoodTableViewCell.h"

@protocol FoodTVDelegate<NSObject>

-(void)addBuyFoodItem:(Food*)food;

@end


@interface FoodTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic)id<FoodTVDelegate>delegate;

@property (strong, nonatomic) IBOutlet UITableView *FoodTableView;

@property (weak, nonatomic) UITextField *foodIDTextField;
@property (weak, nonatomic) UITextField *foodNameTextField;
@property (weak, nonatomic) UITextField *foodPriceTextField;
@property (weak, nonatomic) UITextField *foodMadeInCountryTextField;
@property (weak, nonatomic) UITextField *foodCalorieTextField;
@property (weak, nonatomic) UITextField *foodSizeTextField;
@property (weak, nonatomic) UITextField *foodIngredientsTextField;

@property (strong, nonatomic) Food * food;
@property (strong, nonatomic) NSString * foodIngredientsString;
@property (strong, nonatomic) NSArray * foodIngredientsArray;

- (IBAction)AddFoodItem:(UIButton *)sender;
//- (IBAction)CancelToSeeDetail:(UIButton *)sender;

@end
