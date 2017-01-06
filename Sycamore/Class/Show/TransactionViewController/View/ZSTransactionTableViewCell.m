//
//  ZSTransactionTableViewCell.m
//  Sycamore
//
//  Created by mac on 17/1/4.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSTransactionTableViewCell.h"

@implementation ZSTransactionTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.bgView.backgroundColor = FASTCOLOR;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
