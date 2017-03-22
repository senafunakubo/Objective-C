//
//  ClothTableViewController.m
//  ShoppingCartApp
//
//  Created by Sena Funakubo on 2017-03-15.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ClothTableViewController.h"
#import "FirstTableViewController.h"


@interface ClothTableViewController ()

@end

@implementation ClothTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ClothTableView.delegate = self;
    self.ClothTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        ClothTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewCell"];
        
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewCell"];
        }
        //appear the strings as a placeholder
        cell.ClothTableText.placeholder = @"ClothID";
        
        //connects with each other
        self.clothIDTextField = cell.ClothTableText;
        return cell;
        
    }
    else if(indexPath.row==1)
    {
        ClothTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewCell"];
        
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewCell"];
        }
        cell.ClothTableText.placeholder = @"ClothName";
        self.clothNameTextField = cell.ClothTableText;
        return cell;
        
    }
    else if(indexPath.row==2)
    {
        ClothTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewCell"];
        
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewCell"];
        }
        cell.ClothTableText.placeholder = @"ClothPrice";
        self.clothPriceTextField = cell.ClothTableText;
        return cell;
        
    }
    else if(indexPath.row==3)
    {
        ClothTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewCell"];
        
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewCell"];
        }
        cell.ClothTableText.placeholder = @"ClothMadeInCountry";
        self.clothMadeInCountryTextField = cell.ClothTableText;
        return cell;
        
    }
    else if(indexPath.row==4)
    {
        ClothTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewCell"];
        
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewCell"];
        }
        cell.ClothTableText.placeholder = @"ClothMaterialCode";
        self.clothMaterialCodeTextField = cell.ClothTableText;
        return cell;
        
    }
    else
    {
        ClothTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ClothTableViewCell"];
        
        if(!cell)
        {
            cell = [[ClothTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClothTableViewCell"];
        }
        cell.ClothTableText.placeholder = @"ClothMaterialName";
        self.clothMaterialNameTextField = cell.ClothTableText;
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


- (IBAction)CancelToSeeClothDetail:(UIButton *)sender {
[self dismissViewControllerAnimated:YES completion:NULL];
}


- (IBAction)AddClothItem:(UIButton *)sender {
    self.cloth = [[Cloth alloc]init];
    self.cloth.productID = (int)[self.clothIDTextField.text integerValue];
    self.cloth.productName = self.clothNameTextField.text;
    self.cloth.productPrice = self.clothPriceTextField.text.integerValue;
    self.cloth.productMadeInCountry = self.clothMadeInCountryTextField.text;
    
    //For material codes and names
    NSArray * materialCodeArray = [self.clothMaterialCodeTextField.text componentsSeparatedByString:@","];
    NSArray * materialNameArray = [self.clothMaterialNameTextField.text componentsSeparatedByString:@","];
    
    self.clothMaterialArray = [[NSMutableArray alloc]init];
    
    for(int i = 0; i < materialCodeArray.count; i++)
    {
        NSInteger materialCode = [materialCodeArray[i] integerValue];
        NSString * materialName = materialNameArray[i];
        
        Material * material = [[Material alloc]initWithMaterialCode:(int)(materialCode) materialName:materialName];
        [self.clothMaterialArray addObject:material];
    }
    
    
    self.cloth.clothMaterials = self.clothMaterialArray;
    
    //格納
    [self.delegate addBuyClothItem:self.cloth];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
