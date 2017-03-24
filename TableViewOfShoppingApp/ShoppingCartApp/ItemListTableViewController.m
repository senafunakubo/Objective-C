//
//  ItemListTableViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-16.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ItemListTableViewController.h"
#import "Products.h"
#import "ShoppingCart.h"
#import "ItemListTableViewController.h"

@interface ItemListTableViewController ()

@end

@implementation ItemListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemListTableView.delegate = self;
    self.itemListTableView.dataSource = self;
    
    self.productItemsArray = [[NSMutableArray alloc] init];

}

//-(void) viewWillAppear:(BOOL)animated
//{
//    self.productItemsArray = self.shoppingCart.productsArray;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.productItemsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
          //Step 1: Cell creation and Reuse
          //I need to declare it in mainboard's Identifier
        
          ItemListTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ItemListTableViewCell"];
        
          if(!cell)
          {
             cell = [[ItemListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ItemListTableViewCell"];
          }
        
          //step 2: Data Binding
    Products * product = [self.productItemsArray objectAtIndex:indexPath.row];
    
    
    if([product isMemberOfClass:[Cloth class]])
    {
        cell.ItemImage.image = [UIImage imageNamed:@"cloth"];
        cell.ItemName.text = product.productName;
        //もうすでにproductを持ってこれてるから、他のarrayを作る必要がない
    }
    else if([product isMemberOfClass:[Drinks class]])
    {
        cell.ItemImage.image = [UIImage imageNamed:@"coffee"];
        cell.ItemName.text = product.productName;
    }
    else
    {
        cell.ItemImage.image = [UIImage imageNamed:@"food"];
        cell.ItemName.text = product.productName;
    }
    
    
        return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 104;
}

-(void)showItemLists
{
   self.productItemsArray = [self.delegate seeItems];
    [self.itemListTableView reloadData];
}

//- (IBAction)CancelToSeeItemList:(UIButton *)sender {
//[self dismissViewControllerAnimated:YES completion:NULL];
//}

@end
