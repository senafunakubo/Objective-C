//
//  AdditionalTip.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
@class WritingReview;

@interface AdditionalTip : NSObject

//properties
@property (strong,nonatomic) User* username;
@property (strong,nonatomic) WritingReview* Rname;
@property (strong,nonatomic) NSString* recommendedTime;
@property (strong,nonatomic) NSData* somePhoto;
@property (strong,nonatomic) NSString* applePay;

//constructors
-(id)initWithRname:(WritingReview*)Rname recommendedTime:(NSString*)recommendedTime somePhoto:(NSData*)somePhoto applePay:(NSString*)applePay;

//API
-(void)showWithRname:(WritingReview*)Rname;
-(void)applePayAcceptOrNot:(NSMutableArray<AdditionalTip*>*)adTips;

@end
