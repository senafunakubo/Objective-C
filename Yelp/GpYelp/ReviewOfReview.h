//
//  ReviewOfReview.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-03-02.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "PostComment.h"
#import "WritingReview.h"

@interface ReviewOfReview : NSObject

@property (strong, nonatomic) User* username;
@property (strong, nonatomic) User* author;
@property (strong, nonatomic) NSString* Rname;
@property (strong, nonatomic) PostComment* PostComments;
@property (strong, nonatomic) NSString* reviewOfReview;
@property int numberOfUseful;
@property int numberOfFunny;
@property int numberOfCool;


-(id)initWithUsername:(User*)username author:(User*)author Rname:(NSString*)Rname PostComments:(PostComment*)Postcomments reviewOfReview:(NSString*)reviewOfReview numberOfUseful:(int)numberOfUseful numberOfFunny:(int)numberOfFunny numberOfCool:(int)numberOfCool;


-(void)showWithReviewOfReview:(ReviewOfReview*)ReviewOfReview;

@end
