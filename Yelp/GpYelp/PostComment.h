//
//  PostComment.h
//  GpYelp
//
//  Created by Sena Funakubo on 2017-02-24.
//  Copyright © 2017 Sena Funakubo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface PostComment : NSObject

//properties
@property int commentID;
@property NSString* comment;
@property (strong, nonatomic) User* commentAuthor;
@property (strong, nonatomic) NSDate* date;


//constructors
-(id) initWithCommentID:(int)commentID comment:(NSString*)comment commentAuthor:(User*)commentAuthor date:(NSDate*)date;

@end
