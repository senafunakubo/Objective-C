//
//  FoodTableViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "FoodTableViewController.h"

@interface FoodTableViewController ()

@end

@implementation FoodTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.FoodTableView.delegate = self;
    self.FoodTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewCell"];
        
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.FoodViewText.placeholder = @"FoodID";
        
        //connects with each other
        self.foodIDTextField = cell.FoodViewText;
        return cell;
        
    }
    else if(indexPath.row==1)
    {
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewCell"];
        
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.FoodViewText.placeholder = @"FoodName";
        
        //connects with each other
        self.foodNameTextField = cell.FoodViewText;
        return cell;
        
    }
    else if(indexPath.row==2)
    {
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewCell"];
        
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.FoodViewText.placeholder = @"FoodPrice";
        
        //connects with each other
        self.foodPriceTextField = cell.FoodViewText;
        return cell;
        
    }
    else if(indexPath.row==3)
    {
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewCell"];
        
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.FoodViewText.placeholder = @"FoodMadeInCountry";
        
        //connects with each other
        self.foodMadeInCountryTextField = cell.FoodViewText;
        return cell;
        
    }
    else if(indexPath.row==4)
    {
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewCell"];
        
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.FoodViewText.placeholder = @"FoodCalorie";
        
        //connects with each other
        self.foodCalorieTextField = cell.FoodViewText;
        return cell;
        
    }
    else if(indexPath.row==5)
    {
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewCell"];
        
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.FoodViewText.placeholder = @"FoodSize";
        
        //connects with each other
        self.foodSizeTextField = cell.FoodViewText;
        return cell;
        
    }
    else
    {
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FoodTableViewCell"];
        
        if(!cell)
        {
            cell = [[FoodTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FoodTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.FoodViewText.placeholder = @"FoodIngredients";
        
        //connects with each other
        self.foodIngredientsTextField = cell.FoodViewText;
        return cell;
        
    }
    
}


#pragma mark - Table view data source

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



- (IBAction)AddFoodItme:(UIButton *)sender {
    self.food = [[Food alloc]init];
    self.food.productID = (int)[self.foodIDTextField.text integerValue];
    self.food.productName = self.foodNameTextField.text;
    self.food.productPrice = (int)[self.foodPriceTextField.text integerValue];
    self.food.productMadeInCountry = self.foodMadeInCountryTextField.text;
    self.food.foodCalorie = (int)[self.foodCalorieTextField.text integerValue];
    self.food.foodSize = (int)[self.foodSizeTextField.text integerValue];
    self.food.foodIngredients = [self.foodIngredientsTextField.text componentsSeparatedByString:@","];
    
    [self.delegate addBuyFoodItem:self.food];
    
    //close
    [self dismissViewControllerAnimated:YES completion:NULL];
}

//- (IBAction)CancelToSeeDetail:(UIButton *)sender {
//    [self dismissViewControllerAnimated:YES completion:NULL];
//}
@end
