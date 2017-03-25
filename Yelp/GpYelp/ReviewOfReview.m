//
//  ReviewOfReview.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-03-02.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "ReviewOfReview.h"

@implementation ReviewOfReview

-(id)initWithUsername:(User*)username author:(User*)author Rname:(NSString*)Rname PostComments:(PostComment*)Postcomments reviewOfReview:(NSString*)reviewOfReview numberOfUseful:(int)numberOfUseful numberOfFunny:(int)numberOfFunny numberOfCool:(int)numberOfCool{
       self = [super init];
       if(self)
       {
           self.Rname = Rname;
           self.reviewOfReview = reviewOfReview;
           self.numberOfUseful = numberOfUseful;
           self.numberOfFunny = numberOfFunny;
           self.numberOfCool = numberOfCool;
       
       }
    
       return self;
    }


-(void)showWithReviewOfReview:(ReviewOfReview*)ReviewOfReview
{
    if([ReviewOfReview.reviewOfReview isEqualToString:@"Useful"])
    {
        self.numberOfUseful++;
        NSLog(@"Review's vote");
        NSLog(@"User voted the review is Useful:%d",self.numberOfUseful);

    }
    else if([ReviewOfReview.reviewOfReview isEqualToString:@"Funny"])
    {
        self.numberOfFunny++;
        NSLog(@"Review's vote");
        NSLog(@"User voted the review is Funny:%d",self.numberOfFunny);
    }
    else if([ReviewOfReview.reviewOfReview isEqualToString:@"Cool"])
    {
        self.numberOfCool++;
        NSLog(@"Review's vote");
        NSLog(@"User voted the review is Cool:%d",self.numberOfCool);
    }
    else
    {
        NSLog(@"Review's vote");
        NSLog(@"Nobody voted it yet.");
    }
}


@end
