//
//  ItemListTableViewController.h
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-16.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemListTableViewCell.h"
#import "Cloth.h"
#import "Food.h"
#import "Drinks.h"
@class Products;
@class ShoppingCart;
@class ItemListTableViewController;

@protocol ItemListTVDelegate<NSObject>

@required
- (NSMutableArray<Products*>*)seeItems;

@end

//UITableViewController -> UIViewControllerにする
@interface ItemListTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) id<ItemListTVDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITableView *itemListTableView;
@property (strong, nonatomic) NSMutableArray * productItemsArray;
@property (strong, nonatomic) ShoppingCart * shoppingCart;


- (void)viewWillAppear:(BOOL)animated;

//cancel button
//- (IBAction)CancelToSeeItemList:(UIButton *)sender;


@end
