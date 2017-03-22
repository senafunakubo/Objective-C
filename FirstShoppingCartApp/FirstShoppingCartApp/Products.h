//
//  Products.h
//  exam
//
//  Created by Sena Funakubo on 2017-03-07.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Products : NSObject

@property int productID;
@property (strong,nonatomic) NSString* productName;
@property float productPrice;
@property (strong,nonatomic) NSString* productMadeInCountry;

-(id)initWithProductId:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry;



-(float)totalAmountToPay;

@end
