//
//  Review.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//


//  SuperClassにする予定 今のとこの中身はほぼWritingReviewと同じ

#import <Foundation/Foundation.h>
#import "User.h"
#import "PostComment.h"
@class WritingReview;

@interface Review : NSObject


//properties
@property (strong, nonatomic) User* username;
@property (strong, nonatomic) NSString* Rname;
@property int RatingByStars;
@property (strong,nonatomic) PostComment* PostComments;
@property int numberOfReviews;
@property (strong, nonatomic) NSMutableArray<WritingReview*>* WriteReviewing;


//constructors
-(id) initWithUsername:(User*)User Rname:(NSString*)Rname RatingByStars:(int)RatingByStars PostComments:(PostComment*)Postcomments numberOfReviews:(int)numberOfReviews WritingReview:(NSMutableArray<WritingReview*>*)WriteReviewing;



//methods (APIs)



@end
