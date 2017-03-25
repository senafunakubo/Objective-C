//
//  Recommendation.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Recommendation.h"
#import "ShowRInfo.h"

@implementation Recommendation

-(id) initWithRname:(NSString*)Rname RInfo:(NSMutableArray<ShowRInfo*>*)RInfo review:(NSMutableArray<Review*>*)review phoneNumber:(int)phoneNumber
{
    self = [super init];
    
    if(self)
    {
        self.Rname = Rname;
        self.RInfo = RInfo;
        self.review = review;
        self.phoneNumber = phoneNumber;
    }
    
    return self;
}

//-(void) show
//{
//    NSLog(@"Many users recommended these restarurants.\n");
//    NSLog(@"The Restaurant's name:%@\n",self.Rname);
//    NSLog(@"The Restaurant's info:%@\n",self.RInfo);
//    NSLog(@"Check the review of the restaurant:%@\n",self.review);
//    NSLog(@"The Restaurant's phonenumber:%@\n",self.Rname);
//}

@end

