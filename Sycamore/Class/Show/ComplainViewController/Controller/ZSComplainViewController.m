//
//  ZSComplainViewController.m
//  Sycamore
//
//  Created by mac on 17/1/2.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSComplainViewController.h"

@interface ZSComplainViewController ()

@end

@implementation ZSComplainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BGCOLOR;
    self.navigationItem.title = @"投诉";
    [self setStyle];
    [self ceateView];
}
- (void)ceateView{
    UILabel *lab = [UILabel new];
    [self.view addSubview:lab];
    lab.sd_layout.topSpaceToView(self.view,70).leftSpaceToView(self.view,60).rightSpaceToView(self.view,60).heightIs(40);
    lab.text = @"请输入您的举报或投诉";
    
    UITextField *text = [UITextField new];
    [self.view addSubview:text];
    text.sd_layout.topSpaceToView(lab,10).leftSpaceToView(self.view,30).rightSpaceToView(self.view,30).heightIs(150);
    text.backgroundColor = [UIColor whiteColor];
    text.layer.borderWidth = 1;
    text.layer.borderColor = [UIColor grayColor].CGColor;
    text.layer.cornerRadius = 5;
    text.layer.masksToBounds = YES;
    
    
    UIButton *submit = [UIButton new];
    [self.view addSubview:submit];
    submit.sd_layout.topSpaceToView(text,20).leftSpaceToView(self.view,40).rightSpaceToView(self.view,40).heightIs(40);
    [submit setTitle:@"提交" forState:UIControlStateNormal];
    submit.backgroundColor = MAINCOLOR;
    submit.layer.cornerRadius = 5;
    submit.layer.masksToBounds = YES;
}
//设置状态栏字体颜色
-(UIStatusBarStyle)preferredStatusBarStyle
{
    //1 默认的黑色 (UIStatusBarStyleDefault ）
    //2  白色（UIStatusBarStyleLightContent）
    return UIStatusBarStyleLightContent;  //默认的值是黑色的
}
//返回
- (void)setStyle
{
    UIButton *leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 9.5, 17)];
    
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"fanhui.png"] forState:UIControlStateNormal];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    
    self.navigationItem.leftBarButtonItem = leftItem;
    
    [leftBtn addTarget:self action:@selector(onBack) forControlEvents:UIControlEventTouchUpInside];
}
- (void)onBack
{
    //返回
    [self.navigationController popViewControllerAnimated:YES];
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
