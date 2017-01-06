//
//  QWNavitionController.m
//  Sycamore
//  微微卿 制作
//  Created by teacher on 16-12-26.
//  Copyright (c) 2016年 teacher. All rights reserved.
//

#import "QWNavitionController.h"

@interface QWNavitionController ()

@end

@implementation QWNavitionController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.barTintColor = STATUSCOLOR;
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:20.0]}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
