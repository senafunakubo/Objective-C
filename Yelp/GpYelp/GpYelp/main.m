//
//  main.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-22.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "User.h"
#import "Search.h"
#import "FindFood.h"
#import "Recommendation.h"
#import "Review.h"
#import "Profiles.h"
#import "WritingReview.h"
#import "AdditionalTip.h"
#import "ShowRInfo.h"
#import "PostComment.h"
#import "ReviewOfReview.h"


int main(int argc, const char * argv[]) {
    
    //Create an account object
    User* myUser = [[User alloc] initWithUsername:@"Nannah" password:@"12345678"];
    User* User1 = [[User alloc] initWithUsername:@"Ace" password:@"19901228"];

    BOOL isValid = [myUser isUserValid];
    
    if(isValid==true)
    {
        NSLog(@"\nThe account is valid\n");
    }
    else
    {
        NSLog(@"\nThe account is not valid\n");
    }
    
    
    //Show my profile
    Profiles* myProfile = [[Profiles alloc] initWithusername:@"Nannah" address:@"South Vancouver,BC" numberOfFriends:8 profilePhoto:@"/Users/sena/Desktop/sena.github.io/img/178.gif" numberOfReviews:2];
    
    [myProfile printProfile];
    
    
    //Search restaurants using food genre and place
    Search* mySearch = [[Search alloc] initWithFood:@"Sushi" place:@"Vancouver,BC"];
    [mySearch printSearch];
    
    //Yelp search restaurants which accorded with the condition
    NSMutableArray<findFood*>* listOfRecommendations = [mySearch Results:mySearch amount:3];
    for(int i=0; i<listOfRecommendations.count; i++)
    {
        findFood* findFoods = [listOfRecommendations objectAtIndex:i];
        [findFoods show];
        
    }
    
//Add a comment
    NSMutableArray<PostComment*>* comments = [[NSMutableArray<PostComment*> alloc] init];
    NSMutableArray<AdditionalTip*>* adTips = [[NSMutableArray<AdditionalTip*> alloc] init];
    
    
    PostComment* pc1 = [[PostComment alloc] initWithCommentID:1 comment:@"OK" commentAuthor:myUser date:[NSDate date]];
    PostComment* pc2 = [[PostComment alloc] initWithCommentID:2 comment:@"Great" commentAuthor:myUser date:[NSDate date]];
    PostComment* pc3 = [[PostComment alloc] initWithCommentID:3 comment:@"Nice" commentAuthor:User1 date:[NSDate date]];
    PostComment* pc4 = [[PostComment alloc] initWithCommentID:4 comment:@"So-so" commentAuthor:User1 date:[NSDate date]];
    PostComment* pc5 = [[PostComment alloc] initWithCommentID:5 comment:@"Awesome" commentAuthor:User1 date:[NSDate date]];

    [comments addObject:pc1];
    [comments addObject:pc2];
    [comments addObject:pc3];
    [comments addObject:pc4];
    [comments addObject:pc5];
    
    
//Add a review(including a comment) by user
    NSMutableArray<WritingReview*>* wReviews = [[NSMutableArray<WritingReview*> alloc] init];
    
    WritingReview* review1 = [[WritingReview alloc] initWithUsername:myUser Rname:@"Samurai" RatingByStars:3 PostComments:pc1 WritingReview:wReviews];
    WritingReview* review2 = [[WritingReview alloc] initWithUsername:myUser Rname:@"Hatopopo" RatingByStars:4 PostComments:pc2 WritingReview:wReviews];
    WritingReview* review3 = [[WritingReview alloc] initWithUsername:User1 Rname:@"Hatopopo" RatingByStars:5 PostComments:pc3 WritingReview:wReviews];
    WritingReview* review4 = [[WritingReview alloc] initWithUsername:User1 Rname:@"Samurai" RatingByStars:2 PostComments:pc4 WritingReview:wReviews];
    WritingReview* review5 = [[WritingReview alloc] initWithUsername:User1 Rname:@"Sushi Itoga" RatingByStars:4 PostComments:pc5 WritingReview:wReviews];

        
    [wReviews addObject:review1];
    [wReviews addObject:review2];
    [wReviews addObject:review3];
    [wReviews addObject:review4];
    [wReviews addObject:review5];
    
//Add a aditional tip
    AdditionalTip* at1 = [[AdditionalTip alloc] initWithRname:review1 recommendedTime:@"Afternoon" somePhoto:NULL applePay:@"NO"];
    AdditionalTip* at2 = [[AdditionalTip alloc] initWithRname:review2 recommendedTime:@"Night" somePhoto:NULL applePay:@"YES"];
    AdditionalTip* at3 = [[AdditionalTip alloc] initWithRname:review5 recommendedTime:@"Night" somePhoto:NULL applePay:@"NO"];
    [adTips addObject:at1];
    [adTips addObject:at2];
    [adTips addObject:at3];
    
    

//Add a review of review
    NSMutableArray<ReviewOfReview*>* reviewOfReviewArray = [[NSMutableArray<ReviewOfReview*> alloc] init];
    
    ReviewOfReview* reviewOfReview1 = [[ReviewOfReview alloc]initWithUsername:myUser author:User1 Rname:@"Samurai" PostComments:pc3 reviewOfReview:@"Funny" numberOfUseful:0 numberOfFunny:0 numberOfCool:0];
    
    [reviewOfReviewArray addObject:reviewOfReview1];
    
    
    
//Show each resaturant info which user is looking for
    ShowRInfo *showRInfo = [[ShowRInfo alloc] initWithRname:@"Samurai" food:mySearch place:mySearch WriteReviewing:wReviews nOfR:review4 googleMap:NULL phoneNumber:345 businessHour:[NSDate date]];
    ShowRInfo *showRInfo2 = [[ShowRInfo alloc] initWithRname:@"Hatopopo" food:mySearch place:mySearch WriteReviewing:wReviews nOfR:review3 googleMap:NULL phoneNumber:123 businessHour:[NSDate date]];
    ShowRInfo *showRInfo3 = [[ShowRInfo alloc] initWithRname:@"Sushi Itoga" food:mySearch place:mySearch WriteReviewing:wReviews nOfR:review5 googleMap:NULL phoneNumber:234 businessHour:[NSDate date]];
    
  //    [showRInfo addWriteReviewing:review1];
  //    [showRInfo2 addWriteReviewing:review2];

    
    
//Show each resaturant info which user is looking for
    [showRInfo show];
    [showRInfo2 show];
    [showRInfo3 show];
    [showRInfo calculateStarReview:wReviews];
//    [showRInfo2 calculateStarReview:wReviews];
//    [showRInfo3 calculateStarReview:wReviews];
    
//Add a review(including a comment and an aditional tip) by user
    [review1 showWithUser:myUser postComment:pc1];
    [reviewOfReview1 showWithReviewOfReview:reviewOfReview1];
    [review2 showWithUser:myUser postComment:pc2];
    [review3 showWithUser:User1 postComment:pc3];
    [review4 showWithUser:User1 postComment:pc4];
    [review5 showWithUser:User1 postComment:pc5];
    
//Add a aditional tip
    
    [at1 showWithRname:review1];
    [at1 applePayAcceptOrNot:adTips];

    [at2 showWithRname:review2];
    [at2 applePayAcceptOrNot:adTips];
    
    [at3 showWithRname:review5];
    [at2 applePayAcceptOrNot:adTips];

    
    
    return NSApplicationMain(argc, argv);
}

