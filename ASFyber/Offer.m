//
//  Offer.m
//  ASFyber
//
//  Created by Antonio_Stilo on 24/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import "Offer.h"

@implementation Offer

-(void) parseObject:(NSDictionary*)item
{
    self.title = [item objectForKey:@"title"];
    self.teaser = [item objectForKey:@"teaser"];
    self.thumbnail = [[item objectForKey:@"thumbnail"] objectForKey:@"hires"];
    self.payout = [(NSNumber*)[item objectForKey:@"payout"] stringValue];

}

@end
