//
//  ZSVerifyViewController.m
//  Sycamore
//
//  Created by mac on 17/1/3.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSVerifyViewController.h"

@interface ZSVerifyViewController ()
{
    UILabel *time;
    UILabel *timeField;
    UILabel *moneyField;
    UILabel *addressField;
    UILabel *numberField;
}
@end

@implementation ZSVerifyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"招聘XXX";
    [self setStyle];
    [self createView];
//    [self createFeild];
}
- (void)createFeild{
    timeField = [UILabel new];
    [self.view addSubview:timeField];
    timeField.sd_layout.topSpaceToView(self.view,100).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    timeField.backgroundColor = [UIColor grayColor];
    
    moneyField = [UILabel new];
    [self.view addSubview:moneyField];
    moneyField.sd_layout.topSpaceToView(timeField,15).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    moneyField.backgroundColor = [UIColor grayColor];
    
    addressField = [UILabel new];
    [self.view addSubview:addressField];
    addressField.sd_layout.topSpaceToView(moneyField,15).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    addressField.backgroundColor = [UIColor grayColor];
    
    numberField = [UILabel new];
    [self.view addSubview:numberField];
    numberField.sd_layout.topSpaceToView(addressField,15).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    numberField.backgroundColor = [UIColor grayColor];
    
    
}

- (void)createView{
    UILabel *lab1 = [UILabel new];
    [self.view addSubview:lab1];
    lab1.sd_layout.topSpaceToView(self.view, 130).leftSpaceToView(self.view,15).rightSpaceToView(self.view,0).heightIs(1);
    ////////横线的背景颜色
    lab1.backgroundColor =[UIColor grayColor];
    
    for (int i =1; i<=3; i++) {
        UILabel *lab = [UILabel new];
        [self.view addSubview:lab];
        lab.sd_layout.topSpaceToView(lab1, i*45).leftSpaceToView(self.view,15).rightSpaceToView(self.view,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =SEGMENTCOLOR;
    }
    /*时间*/
    time = [UILabel new];
    [self.view addSubview:time];
    /////////字体大小
    time.font = [UIFont boldSystemFontOfSize:16];
    time.sd_layout.topSpaceToView(self.view,95).leftSpaceToView(self.view,30).widthIs(80).heightIs(30);
    time.text = @"到场时间";
    /*报酬*/
    UILabel *money = [UILabel new];
    [self.view addSubview:money];
    /////////字体大小
    money.font = [UIFont boldSystemFontOfSize:16];
    money.sd_layout.topSpaceToView(time,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    money.text = @"酬        金";
    /*集合地点*/
    UILabel *address = [UILabel new];
    [self.view addSubview:address];
    /////////字体大小
    address.font = [UIFont boldSystemFontOfSize:16];
    address.sd_layout.topSpaceToView(money,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    address.text = @"集合地点";
    /*人数*/
    UILabel *people = [UILabel new];
    /////////字体大小
    people.font = [UIFont boldSystemFontOfSize:16];
    [self.view addSubview:people];
    people.sd_layout.topSpaceToView(address,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    people.text = @"剩余人数";
    
    UIButton *verifyBtn = [UIButton new];
    [self.view addSubview:verifyBtn];
    verifyBtn.sd_layout.topSpaceToView(people,50).leftSpaceToView(self.view,40).rightSpaceToView(self.view,40).heightIs(40);
    [verifyBtn setTitle:@"确认报名" forState:UIControlStateNormal];
    verifyBtn.backgroundColor = MAINCOLOR;
    verifyBtn.layer.cornerRadius = 5;
    verifyBtn.layer.masksToBounds = YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
