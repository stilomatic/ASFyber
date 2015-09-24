//
//  ListTableViewCell.m
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import "ListTableViewCell.h"
#import <UIImageView+AFNetworking.h>

@implementation ListTableViewCell

- (void)setData:(Offer *)data {
    
    self.titleLabel.text = data.title;
    self.teaserLabel.text = data.teaser;
    self.payoutLabel.text = data.payout;
    
    [self.thumbnail setImageWithURL:[NSURL URLWithString: data.thumbnail]];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
