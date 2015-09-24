//
//  RequestMaker.h
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^getarray_t)(NSArray *data);

@interface RequestMaker : NSObject

-(void) retriveOffers:(getarray_t) callBack;

@end
