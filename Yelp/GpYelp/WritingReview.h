//
//  WritingReview.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PostComment.h"
#import "Recommendation.h"

@interface WritingReview : NSObject

//properties
@property (strong, nonatomic) User* username;
@property (strong, nonatomic) NSString* Rname;
@property int RatingByStars;
@property (strong,nonatomic) PostComment* PostComments;
@property (strong, nonatomic) NSMutableArray<WritingReview*>* WriteReviewing;


//constructors
-(id)initWithUsername:(User*)User Rname:(NSString*)Rname RatingByStars:(int)RatingByStars PostComments:(PostComment*)Postcomments WritingReview:(NSMutableArray<WritingReview*>*)WriteReviewing;


-(void)addWriteReviewing:(WritingReview*)addWritingReviewing;

-(void)showWithUser:(User*)user postComment:(PostComment*)postComment;

@end
