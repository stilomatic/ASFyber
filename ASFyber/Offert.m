//
//  Offert.m
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import "Offert.h"

@implementation Offert

-(void) parseObject:(NSDictionary*) jsonItem
{
    self.title = [jsonItem objectForKey:kTitle];
    self.teaser = [jsonItem objectForKey:kTeaser];
    self.thumbnail = [[jsonItem objectForKey:kThumbnail] objectForKey:@"hires"];
    self.payout = [jsonItem objectForKey:kPayout];

}

@end
