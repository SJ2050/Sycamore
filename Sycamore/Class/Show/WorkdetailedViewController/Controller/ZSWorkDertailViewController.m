//
//  ZSWorkDertailViewController.m
//  Sycamore
//
//  Created by mac on 17/1/2.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSWorkDertailViewController.h"

@interface ZSWorkDertailViewController ()
{
    UILabel *number;
}
@end

@implementation ZSWorkDertailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.navigationItem.title = @"工作详情";
    self.view.backgroundColor = BGCOLOR;
    [self createView];
    [self setStyle];
}
- (void)createView{
    UILabel *lab1 = [UILabel new];
    [self.view addSubview:lab1];
    lab1.sd_layout.topSpaceToView(self.view, 130).leftSpaceToView(self.view,15).rightSpaceToView(self.view,0).heightIs(1);
    ////////横线的背景颜色
    lab1.backgroundColor =[UIColor grayColor];
    
    for (int i =1; i<=6; i++) {
        UILabel *lab = [UILabel new];
        [self.view addSubview:lab];
        lab.sd_layout.topSpaceToView(lab1, i*45).leftSpaceToView(self.view,15).rightSpaceToView(self.view,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =[UIColor grayColor];
    }
    /*找平人数*/
    number = [UILabel new];
    [self.view addSubview:number];
    /////////字体大小
    number.font = [UIFont boldSystemFontOfSize:16];
    number.sd_layout.topSpaceToView(self.view,100).leftSpaceToView(self.view,30).widthIs(80).heightIs(30);
    number.text = @"招聘XXX";
    /*时间*/
    UILabel *addressTime = [UILabel new];
    /////////字体大小
    addressTime.font = [UIFont boldSystemFontOfSize:16];
    [self.view addSubview:addressTime];
    addressTime.sd_layout.topSpaceToView(number,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    addressTime.text = @"到场时间";
    /*公司*/
    UILabel *company = [UILabel new];
    [self.view addSubview:company];
    /////////字体大小
    company.font = [UIFont boldSystemFontOfSize:16];
    company.sd_layout.topSpaceToView(addressTime,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    company.text = @"XXX公司";
    
    /*酬金*/
    UILabel *money = [UILabel new];
    [self.view addSubview:money];
    /////////字体大小
    money.font = [UIFont boldSystemFontOfSize:16];
    money.sd_layout.topSpaceToView(company,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    money.text = @"酬        金";
    
    /*要求*/
    UILabel *demand = [UILabel new];
    [self.view addSubview:demand];
    /////////字体大小
    demand.font = [UIFont boldSystemFontOfSize:16];
    demand.sd_layout.topSpaceToView(money,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    demand.text = @"要        求";
    /*发布时间*/
    UILabel *complainTime = [UILabel new];
    [self.view addSubview:complainTime];
    /////////字体大小
    complainTime.font = [UIFont boldSystemFontOfSize:16];
    complainTime.sd_layout.topSpaceToView(demand,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    complainTime.text = @"发布时间";
    
    /*工作地点*/
    UILabel *address = [UILabel new];
    [self.view addSubview:address];
    /////////字体大小
    address.font = [UIFont boldSystemFontOfSize:16];
    address.sd_layout.topSpaceToView(complainTime,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    address.text = @"工作地点";
    
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
