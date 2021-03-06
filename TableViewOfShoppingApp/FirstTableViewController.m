//
//  FirstTableViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "FirstTableViewController.h"

@interface FirstTableViewController ()

@end

@implementation FirstTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.firstTableView.delegate = self;
    self.firstTableView.dataSource = self;
    
    NSMutableArray<Products*>* productsArray = [[NSMutableArray alloc]init];
    ShoppingCart *shoppingCart = [[ShoppingCart alloc]initWithProductsArray:productsArray];
    self.shoppingCart = shoppingCart;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//what information do you wanna show by the indexPath
    if(indexPath.row==0)
    {
        //Step 1: Cell creation and Reuse
        //I need to declare it in mainboard"s Identifier
    
        FirstTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FirstTableViewCell"];
        
         if(!cell)
         {
            cell = [[FirstTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FirstTableViewCell"];
         }
        
        //step 2: Data Binding
        cell.myImage.image = [UIImage imageNamed:@"cloth"];
        
        return cell;
    }
    else if(indexPath.row==1)
    {
        FirstTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FirstTableViewCell"];
    
         if(!cell)
         {
            cell = [[FirstTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FirstTableViewCell"];
         }
        
        cell.myImage.image = [UIImage imageNamed:@"coffee"];
        
        return cell;
    }
    else
    {
        FirstTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FirstTableViewCell"];
        
        if(!cell)
        {
            cell = [[FirstTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FirstTableViewCell"];
        }
        
        cell.myImage.image = [UIImage imageNamed:@"food"];
        
        return cell;
    }

}

- (void)addBuyClothItem:(Cloth*)cloth
{
    [self.shoppingCart addToShoppingCart:cloth];
}

- (void)addBuyDrinkItem:(Drinks*)drink
{
    [self.shoppingCart addToShoppingCart:drink];
}

- (void)addBuyFoodItem:(Food*)food
{
    [self.shoppingCart addToShoppingCart:food];
}

- (NSMutableArray<Products*>*)seeItems
{
    return self.shoppingCart.productsArray;
}


//- (void)viewWillAppear:(BOOL)animated
//{
//   self.TotalAmount.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%0.2f", (float)[self.shoppingCart calculateTotalCost]]];
//}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section==0)
    {
        return 130;
    }
    else
    {
        return 70;
    }
    
}

//-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if(indexPath.row==0) //cloth
//    {
//        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:NULL];
//        
//    
//        ClothTableViewController* vc = (ClothTableViewController*)[storyboard instantiateViewControllerWithIdentifier:@"ClothTableViewControllerID"];
//        
////        vc.delegate = self;
//        
//        //For table one
//        //[self presentViewController:vc animated:YES completion:NULL];
//        
//        [[self navigationController] pushViewController:vc animated:YES];
//    }
//    else if(indexPath.row==1) //drink
//    {
//        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:NULL];
//        
//        DrinkTableViewController* vc = (DrinkTableViewController*)[storyboard instantiateViewControllerWithIdentifier:@"DrinkTableViewControllerID"];
//        
////        vc.delegate = self;
//        
//        [[self navigationController] pushViewController:vc animated:YES];
//    }
//    else if(indexPath.row==2)  //food
//    {
//        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:NULL];
//        
//        FoodTableViewController* vc = (FoodTableViewController*)[storyboard instantiateViewControllerWithIdentifier:@"FoodTableViewControllerID"];
//        
////        vc.delegate = self;
//        
//       [[self navigationController] pushViewController:vc animated:YES];
//    }
//    else //shopping list
//    {
//        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:NULL];
//        
//        ItemListTableViewController* vc = (ItemListTableViewController*)[storyboard instantiateViewControllerWithIdentifier:@"ItemListTableViewControllerID"];
//        
//        vc.shoppingCart=self.shoppingCart;
//        
//        [[self navigationController] pushViewController:vc animated:YES];
////        [self presentViewController:vc animated:YES completion:NULL];
//
//    }
//}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1; //1セクションを使い回す
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}


-(void)caculatePrice
{
  self.TotalAmount.text = [@"$" stringByAppendingString:[NSString stringWithFormat:@"%0.2f", (float)[self.delegate thePriceOfProducts]]];
}



//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//   if([segue.identifier isEqualToString:@"showlistsegueid"])
//   {
//       
//       ((ItemListTableViewController*)(segue.destinationViewController)).shoppingCart = self.shoppingCart;
//       //なんでキャストする必要があるのか
//   }
//}

@end
