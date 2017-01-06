//
//  ZSPersonalAccountViewController.m
//  Sycamore
//
//  Created by mac on 17/1/4.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSPersonalAccountViewController.h"
#import "ZSPersonalTranTableViewController.h"
#import "ZSPersonalHisTableViewController.h"

@interface ZSPersonalAccountViewController ()
{
    UIView *views;
    UILabel *money;
    UILabel *moneyLab;
   
}
@end

@implementation ZSPersonalAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"个人账户";
    [self setStyle];
    [self createView];
}
- (void)createView{
    views = [UIView new];
    [self.view addSubview:views];
    views.backgroundColor =FASTCOLOR;
    views.sd_layout.topSpaceToView(self.view,64).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(150.5);
    for (int i =1; i<=2; i++) {
        UILabel *lab = [UILabel new];
        [views addSubview:lab];
        lab.sd_layout.topSpaceToView(views, i*50).leftSpaceToView(views,8).rightSpaceToView(views,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =SEGMENTCOLOR;
    }
    money = [UILabel new];
    [views addSubview:money];
    money.sd_layout.topSpaceToView(views,18).heightIs(14).widthIs(80).leftSpaceToView(views,18);
    money.textAlignment = NSTextAlignmentLeft;
    money.font = [UIFont systemFontOfSize:15];
    money.text = @"余额：";
    UILabel *yuan = [UILabel new];
    [views addSubview:yuan];
    yuan.sd_layout.topSpaceToView(views,18).rightSpaceToView(views,7.5).widthIs(20).heightIs(12.5);
    yuan.font = [UIFont systemFontOfSize:13];
    yuan.text = @"元";
    moneyLab = [UILabel new];
    [views addSubview:moneyLab];
    moneyLab.sd_layout.topSpaceToView(views,18).rightSpaceToView(yuan,0).leftSpaceToView(moneyLab,50).heightIs(12.5);
    moneyLab.text = @"3.58";
    moneyLab.textAlignment = NSTextAlignmentRight;
    
    UIButton *look = [UIButton new];
    [views addSubview:look];
    look.sd_layout.topSpaceToView(money,36).heightIs(14).widthIs(80).leftSpaceToView(views,8);
    [look setTitle:@"查看交易" forState:UIControlStateNormal];
    look.titleLabel.font = [UIFont systemFontOfSize:15];
    [look setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [look addTarget:self action:@selector(clickLook) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *history = [UIButton new];
    [views addSubview:history];
    history.sd_layout.topSpaceToView(look,36).heightIs(14).widthIs(80).leftSpaceToView(views,8);
    [history setTitle:@"历史交易" forState:UIControlStateNormal];
    history.titleLabel.font = [UIFont systemFontOfSize:15];
    [history setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [history addTarget:self action:@selector(clickHistory) forControlEvents:UIControlEventTouchUpInside];
}
//查看交易
- (void)clickLook{
    ZSPersonalTranTableViewController *tranCtl = [[ZSPersonalTranTableViewController alloc] init];
    tranCtl.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:tranCtl animated:YES];
}
//历史交易
- (void)clickHistory{
    ZSPersonalHisTableViewController *historyCtl = [[ZSPersonalHisTableViewController alloc] init];
    historyCtl.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:historyCtl animated:YES];
}


//返回
- (void)setStyle
{
    UIButton *leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 9.5,17)];
    
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
