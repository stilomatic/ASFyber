//
//  RequestMaker.m
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import "RequestMaker.h"
#import "Global.h"
#import <AFNetworking.h>
#import <CommonCrypto/CommonDigest.h>
#import <AdSupport/ASIdentifierManager.h>
#import "Offer.h"


@implementation RequestMaker

#pragma mark Private Methods

-(NSString *) stringToSHA1: (NSString*) str {
    
    NSMutableString *hashStr = [str mutableCopy];
    [hashStr appendString:APIKEY];
    const char *cStr = [hashStr UTF8String];
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(cStr, (int)strlen(cStr), result);
    NSString *s = [NSString  stringWithFormat:
                   @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                   result[0], result[1], result[2], result[3], result[4],
                   result[5], result[6], result[7],
                   result[8], result[9], result[10], result[11], result[12],
                   result[13], result[14], result[15],
                   result[16], result[17], result[18], result[19]
                   ];
    
    return s;
}

-(NSMutableString*)params {
    
    NSMutableString *result = [NSMutableString new];

    NSString *appid = [NSString stringWithFormat:@"appid=%@&",APPID];
    NSString *apple_idfa = [NSString stringWithFormat:@"apple_idfa=%@&",IDFA];
    NSString *apple_idfa_tracking_enabled = [NSString stringWithFormat:@"apple_idfa_tracking_enabled=true&"];
    NSString *ip = [NSString stringWithFormat:@"ip=%@&",IP];
    NSString *locale = [NSString stringWithFormat:@"locale=%@&",LOCALE];
    NSString *offer_types = [NSString stringWithFormat:@"offer_types=%@&",OFFER_TYPES];
    NSString *os_version = [NSString stringWithFormat:@"os_version=7.0&"];
    NSString *timestamp = [NSString stringWithFormat:@"timestamp=%f&",[[NSDate date] timeIntervalSince1970]];
    NSString *uid = [NSString stringWithFormat:@"uid=%@&",UID];

    [result appendString:appid];
    [result appendString:apple_idfa];
    [result appendString:apple_idfa_tracking_enabled];
    [result appendString:ip];
    [result appendString:locale];
    [result appendString:offer_types];
    [result appendString:os_version];
    [result appendString:timestamp];
    [result appendString:uid];
    
    return result;

}

#pragma mark Public Methods

-(void)retriveOffers:(getarray_t)callBack
{
    
    NSMutableString *params = [self params];
    
    NSString *hashKey = [self stringToSHA1:params];
    
    NSString *urlPath = [NSString stringWithFormat:@"%@?%@hashkey=%@", URLPATH, params, hashKey];
    
    NSLog(@"URLPATH::: %@ \n\n",urlPath);
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlPath parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        if (callBack) {
            
            NSArray *data = [responseObject objectForKey:@"offers"];
            NSMutableArray *offers = [NSMutableArray new];
            
            for (int i = 0; i < data.count; i++) {
                Offer *offer = [Offer new];
                [offer parseObject:[data objectAtIndex:i]];
                [offers addObject:offer];
            }
            
            callBack(offers);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
