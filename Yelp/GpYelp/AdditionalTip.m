//
//  AdditionalTip.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "AdditionalTip.h"
#import "WritingReview.h"

@implementation AdditionalTip

-(id)initWithRname:(WritingReview*)Rname recommendedTime:(NSString*)recommendedTime somePhoto:(NSData*)somePhoto applePay:(NSString*)applePay
{
    self = [super init];
    
    if(self)
    {
        self.recommendedTime = recommendedTime;
        self.somePhoto = somePhoto;
        self.applePay = applePay;
    }
    
    return self;

}


-(void)showWithRname:(WritingReview*)Rname
{
    NSLog(@"\n============================================\n");
    NSLog(@"**AdditionalTip**");
    NSLog(@"Restaurant name is %@",Rname.Rname);
    NSLog(@"Recommended time is %@",self.recommendedTime);
    
}
-(void)applePayAcceptOrNot:(NSMutableArray<AdditionalTip*>*)adTips
{
    for(int i=0; i<adTips.count; i++)
    {
        AdditionalTip* adt = [adTips objectAtIndex:i];
        if([adt.applePay isEqualToString:@"NO"])
        {
            NSLog(@"Thank you for the info that this restaurant doesn't accept ApplePay.");
            NSLog(@"\n============================================\n");
            break;
            
        }
        else
        {
            NSLog(@"Thank you for the info that this restaurant accept ApplePay.");
            NSLog(@"\n============================================\n");
            break;
        }
    }
}
//-(BOOL)reportAboutApplePay
//{
//    return false;
//}

@end
