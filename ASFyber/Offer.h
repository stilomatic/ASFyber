//
//  Offer.h
//  ASFyber
//
//  Created by Antonio_Stilo on 24/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Offer : NSObject

-(void) parseObject:(NSDictionary*)item;

@property (nonatomic,retain) NSString *title;
@property (nonatomic,retain) NSString *teaser;
@property (nonatomic,retain) NSString *thumbnail;
@property (nonatomic,retain) NSString *payout;

@end
