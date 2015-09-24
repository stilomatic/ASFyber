//
//  Listviewmodel.h
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define CELL_IDENTIFIER @"offertCell"

@interface ListViewModel : NSObject <UITableViewDataSource>

@property (nonatomic, retain) NSArray *data;

@end
