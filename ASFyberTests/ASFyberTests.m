//
//  ASFyberTests.m
//  ASFyberTests
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RequestMaker.h"

@interface ASFyberTests : XCTestCase

@end

@implementation ASFyberTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRequestExample {
    
    [self measureBlock:^{
        RequestMaker *rm = [RequestMaker new];
        [rm retriveOffers:^(NSArray *data) {
            XCTAssertTrue( [data count] > 0, @"We have not found offers" );
        }];
    }];
}

@end
