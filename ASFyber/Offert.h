//
//  Offert.h
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kTitle @"title"
#define kTeaser @"teaser"
#define kThumbnail @"thumbnail"
#define kPayout @"payout"

@interface Offert : NSObject

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *teaser;
@property (nonatomic, retain) NSString *thumbnail;
@property (nonatomic, retain) NSString *payout;

-(void) parseObject:(NSDictionary*) jsonItem;

@end
