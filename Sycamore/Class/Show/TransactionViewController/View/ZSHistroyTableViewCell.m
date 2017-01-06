//
//  ZSHistroyTableViewCell.m
//  Sycamore
//
//  Created by mac on 17/1/4.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSHistroyTableViewCell.h"

@implementation ZSHistroyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _imgView.backgroundColor = FASTCOLOR;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
