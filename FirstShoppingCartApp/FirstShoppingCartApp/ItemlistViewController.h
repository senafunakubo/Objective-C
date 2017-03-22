//
//  ItemlistViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-09.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Products.h"
#import "Drinks.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"
#import "ShoppingCart.h"
@class ItemlistViewController;

@protocol ItemListDelegate<NSObject>

@required
- (NSMutableArray*)seeItems;

@end


@interface ItemlistViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *showAllItemList;
@property (strong, nonatomic) NSMutableArray * productItemsArray;
@property (weak, nonatomic) id<ItemListDelegate> delegate;


- (void)viewWillAppear:(BOOL)animated;


//cancel button
- (IBAction)CancelToSeeTheList:(UIButton *)sender;


@end
