//
//  Review.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "Review.h"
#import "WritingReview.h"

@implementation Review

-(id) initWithUsername:(User*)User Rname:(NSString*)Rname RatingByStars:(int)RatingByStars PostComments:(PostComment*)Postcomments numberOfReviews:(int)numberOfReviews WritingReview:(NSMutableArray<WritingReview*>*)WriteReviewing;
{
    self = [super init];
    if(self)
    {
        self.Rname = Rname;
        self.RatingByStars = RatingByStars;
        self.numberOfReviews = numberOfReviews;
    }
    return self;
}

@end
