//
//  PostComment.m
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-24.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import "PostComment.h"

@implementation PostComment

-(id) initWithCommentID:(int)commentID comment:(NSString*)comment commentAuthor:(User*)commentAuthor date:(NSDate*)date
{
    self = [super init];
    if(self)
    {
        self.commentID = commentID;
        self.comment = comment;
        self.commentAuthor = commentAuthor;
        self.date = date;
    }
    return self;
}


@end
