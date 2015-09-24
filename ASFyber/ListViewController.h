//
//  ListViewController.h
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewModel.h"

@interface ListViewController : UIViewController <UITableViewDelegate>

@property (nonatomic, retain) ListViewModel *viewModel;

@end
