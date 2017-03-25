//
//  WritingReview.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "WritingReview.h"
#import "PostComment.h"
#import "AdditionalTip.h"

@implementation WritingReview

-(id)initWithUsername:(User*)User Rname:(NSString*)Rname RatingByStars:(int)RatingByStars PostComments:(PostComment*)Postcomments WritingReview:(NSMutableArray<WritingReview*>*)WriteReviewing
{
    self = [super init];
    if(self)
    {
        self.Rname = Rname;
        self.RatingByStars = RatingByStars;
        self.PostComments = Postcomments;
        self.WriteReviewing = WriteReviewing;
    }
    
    return self;
}

-(void)addWriteReviewing:(WritingReview*)addWritingReviewing
{
    [self.WriteReviewing addObject:addWritingReviewing];
}


-(void)showWithUser:(User*)user postComment:(PostComment*)postComment
{
    NSLog(@"\n============================================\n");
    NSLog(@"Username is %@",user.username);
    NSLog(@"Restaurant name is %@",self.Rname);
    NSLog(@"I evaluated this restaurant as ★x%d",self.RatingByStars);
    NSLog(@"Comment: %@",postComment.comment);
    NSLog(@"\n============================================\n");
}


@end
