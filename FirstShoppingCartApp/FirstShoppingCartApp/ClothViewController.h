//
//  ClothViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-08.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Products.h"
#import "Material.h"
#import "ShoppingCart.h"
@class Cloth;

@protocol ClothViewDelegate <NSObject>

//@required
-(void)addBuyClothItem:(Cloth*)cloth;

@end


@interface ClothViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *clothIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *clothNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *clothPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *clothMadeInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *clothMaterialsNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *clothMaterialsCodeTextField;
@property (strong,nonatomic)Cloth* cloth;

@property (weak, nonatomic) id<ClothViewDelegate> delegate;
@property (strong, nonatomic) Material * material;
@property (strong, nonatomic) NSMutableArray* clothMaterialArray;


- (IBAction)AddClothButton:(UIButton *)sender;

//Cancel button
- (IBAction)CancelToSeeClothDetail:(UIButton *)sender;

@end
