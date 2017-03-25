//
//  ShowRInfo.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ShowRInfo.h"

@implementation ShowRInfo

-(id) initWithRname:(NSString*)Rname food:(Search*)food place:(Search*)place WriteReviewing:(NSMutableArray<WritingReview*>*)WriteReviewing nOfR:(WritingReview*)nOfR googleMap:(NSData*)googleMap phoneNumber:(int)phoneNumber businessHour:(NSDate*)businessHour
{
    self = [super init];
    if(self)
    {
        self.Rname = Rname;
//        self.SeeReviewing = SeeReviewing;
        self.WriteReviewing = WriteReviewing;
        self.nOfR = nOfR;
        self.googleMap = googleMap;
        self.phoneNumber = phoneNumber;
        self.businessHour = businessHour;
    }
    return self;
}

-(void)addWriteReviewing:(WritingReview*)addWritingReviewing
{
    [self.WriteReviewing addObject:addWritingReviewing];
}

-(void)show
{
    NSLog(@"Restaurant Name is: %@", self.Rname);
    NSLog(@"Restaurant phone number is: %d", self.phoneNumber);
    NSLog(@"\n\n");
}


-(float) calculateStarReview:(NSMutableArray<WritingReview*>*)wReviews
{
    int numberOfSamuraiReview = 0;
    int numberOfHatopopoReview = 0;
    int numberOfSushiItogaReview = 0;
    int numberOfSamuraiReviewStars = 0;
    int numberOfHatopopoReviewStars = 0;
    int numberOfSushiItogaReviewStars = 0;
    
    for(int i=0; i<wReviews.count;i++)
    {
        if([wReviews[i].Rname isEqualToString:@"Samurai"])
        {
            numberOfSamuraiReview++;
            numberOfSamuraiReviewStars = numberOfSamuraiReviewStars + wReviews[i].RatingByStars;
        }
        else if([wReviews[i].Rname isEqualToString:@"Hatopopo"])
        {
            numberOfHatopopoReview++;
            numberOfHatopopoReviewStars = numberOfHatopopoReview + wReviews[i].RatingByStars;
        }
        else if([wReviews[i].Rname isEqualToString:@"Sushi Itoga"])
        {
            numberOfSushiItogaReview++;
            numberOfSushiItogaReviewStars = numberOfSushiItogaReview + wReviews[i].RatingByStars;
        }

    }
    
    NSLog(@"There are %d reviews for Samurai", numberOfSamuraiReview);
    int averageOfSamuraiStars = numberOfSamuraiReviewStars/numberOfSamuraiReview;
    NSLog(@"This restaurant's average star is ★x %d \n\n",averageOfSamuraiStars);
    
    NSLog(@"There are %d reviews for Hatopopo", numberOfHatopopoReview);
    int averageOfHatopopoStars = numberOfHatopopoReviewStars/numberOfHatopopoReview;
    NSLog(@"This restaurant's average star is ★x %d \n\n",averageOfHatopopoStars);
    
    NSLog(@"There are %d reviews for Sushi Itoga", numberOfSushiItogaReview);
    int averageOfSushiItogaStars = numberOfSushiItogaReviewStars/numberOfSushiItogaReview;
    NSLog(@"This restaurant's average star is ★x %d \n\n",averageOfSushiItogaStars);

    return 0;
}

@end
