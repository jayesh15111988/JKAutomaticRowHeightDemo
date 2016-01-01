//
//  JKAutomaticTableHeightTableViewCell.m
//  JKAutomaticTableViewCellHeightManagement
//
//  Created by Jayesh Kawli Backup on 12/31/15.
//  Copyright © 2015 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAutomaticTableHeightTableViewCell.h"

@implementation JKAutomaticTableHeightTableViewCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        self.cellTitleLabel.backgroundColor = [UIColor greenColor];
    } else {
        self.cellTitleLabel.backgroundColor = [UIColor whiteColor];
    }
}

@end
