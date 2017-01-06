//
//  ZSTransactionTableViewCell.h
//  Sycamore
//
//  Created by mac on 17/1/4.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZSTransactionTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *profession;
@property (weak, nonatomic) IBOutlet UILabel *timeDate;
@property (weak, nonatomic) IBOutlet UILabel *mission;

@end
