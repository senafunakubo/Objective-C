//
//  ClothTableViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Products.h"
#import "Cloth.h"
#import "Material.h"
#import "ClothTableViewCell.h"
@class FirstTableViewController;

@protocol ClothTVDelegate<NSObject>

-(void)addBuyClothItem:(Cloth*)cloth;

@end


@interface ClothTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic)id<ClothTVDelegate>delegate;


@property (weak, nonatomic) IBOutlet UITableView *ClothTableView;
@property (weak, nonatomic) UITextField *clothIDTextField;
@property (weak, nonatomic) UITextField *clothNameTextField;
@property (weak, nonatomic) UITextField *clothPriceTextField;
@property (weak, nonatomic) UITextField *clothMadeInCountryTextField;
@property (weak, nonatomic) UITextField *clothMaterialNameTextField;
@property (weak, nonatomic) UITextField *clothMaterialCodeTextField;
@property (strong, nonatomic) Cloth * cloth;
@property (strong, nonatomic) Material * material;
@property (strong, nonatomic) NSMutableArray* clothMaterialArray;


- (IBAction)AddClothItem:(UIButton *)sender;
- (IBAction)CancelToSeeClothDetail:(UIButton *)sender;

@end
