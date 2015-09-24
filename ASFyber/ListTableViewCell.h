//
//  ListTableViewCell.h
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Offer.h"

@interface ListTableViewCell : UITableViewCell

- (void)setData:(Offer *)data ;

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UILabel *teaserLabel;
@property (nonatomic, retain) IBOutlet UILabel *payoutLabel;
@property (nonatomic, retain) IBOutlet UIImageView *thumbnail;

@end
