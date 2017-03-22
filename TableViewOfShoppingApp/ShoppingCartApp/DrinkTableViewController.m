//
//  DrinkTableViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "DrinkTableViewController.h"

@interface DrinkTableViewController ()

@end

@implementation DrinkTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.DrinkTableView.delegate = self;
    self.DrinkTableView.dataSource = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   if(indexPath.row==0)
   {
       DrinkTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewCell"];
    
      if(!cell)
      {
         cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewCell"];
      }
       //appear the strings as a placeholder
               cell.DrinkTableText.placeholder = @"DrinkID";
       
       //connects with each other
               self.drinkIDTextField = cell.DrinkTableText;
       
            return cell;
       
   }
   else if(indexPath.row==1)
   {
       DrinkTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewCell"];
    
      if(!cell)
      {
        cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewCell"];
      }
       //appear the strings as a placeholder
       cell.DrinkTableText.placeholder = @"DrinkName";
       
       //connects with each other
       self.drinkNameTextField = cell.DrinkTableText;
       
    return cell;
       
    }
    else if(indexPath.row==2)
    {
       DrinkTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewCell"];
    
       if(!cell)
       {
         cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewCell"];
       }
        //appear the strings as a placeholder
        cell.DrinkTableText.placeholder = @"DrinkPrice";
        
        //connects with each other
        self.drinkPriceTextField = cell.DrinkTableText;
        
     return cell;
        
    }
    else if(indexPath.row==3)
    {
        DrinkTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewCell"];
        
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.DrinkTableText.placeholder = @"DrinkMadeInCountry";
        
        //connects with each other
        self.drinkMadeInCountryTextField = cell.DrinkTableText;

        return cell;
        
    }
    else if(indexPath.row==4)
    {
        DrinkTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewCell"];
        
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.DrinkTableText.placeholder = @"isDrinkDiet";
        
        //connects with each other
        self.isDrinkDietTextField = cell.DrinkTableText;

        return cell;
        
    }
    else
    {
        DrinkTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkTableViewCell"];
        
        if(!cell)
        {
            cell = [[DrinkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DrinkTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.DrinkTableText.placeholder = @"DrinkSize";
        
        //connects with each other
        self.drinkSizeTextField = cell.DrinkTableText;
        
        return cell;
        
    }

}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section==0)
    {
        return 80;
    }
    else
    {
        return 70;
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 6;
}



- (IBAction)CancelToSeeDrinkDetail:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (IBAction)AddDrinkItem:(UIButton *)sender {
    self.drink = [[Drinks alloc]init];
    self.drink.productID = (int)[self.drinkIDTextField.text integerValue];
    self.drink.productName = self.drinkNameTextField.text;
    self.drink.productPrice = self.drinkPriceTextField.text.integerValue;
    self.drink.productMadeInCountry = self.drinkMadeInCountryTextField.text;
    self.drink.isDrinkDiet = self.isDrinkDietTextField.text.boolValue;
    self.drink.drinkSize = (int)[self.drinkSizeTextField.text integerValue];
    
    [self.delegate addBuyDrinkItem:self.drink];
    
    //close
    [self dismissViewControllerAnimated:YES completion:NULL];

}
@end
