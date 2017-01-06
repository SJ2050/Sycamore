//
//  ZSIssueViewController.m
//  Sycamore
//
//  Created by mac on 17/1/1.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSIssueViewController.h"

@interface ZSIssueViewController ()
{
    UILabel *vocation;
    UITextField *vocationField;//职业
    UITextField *number;//人数
    UITextField *addressField;//到场时间
    UITextField *demandField;//具体要求
    UITextField *moneyField;//报酬
}
@end

@implementation ZSIssueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BGCOLOR;
    self.navigationItem.title = @"发布";
    [self createLab];
    [self setStyle];
//    [self createFeild];
}

-(void)createLab{
    UILabel *lab1 = [UILabel new];
    [self.view addSubview:lab1];
    lab1.sd_layout.topSpaceToView(self.view, 130).leftSpaceToView(self.view,15).rightSpaceToView(self.view,0).heightIs(1);
    ////////横线的背景颜色
    lab1.backgroundColor =[UIColor grayColor];
    
    for (int i =1; i<=4; i++) {
        UILabel *lab = [UILabel new];
         [self.view addSubview:lab];
        lab.sd_layout.topSpaceToView(lab1, i*45).leftSpaceToView(self.view,15).rightSpaceToView(self.view,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =SEGMENTCOLOR;
    }
    /*职业*/
    vocation = [UILabel new];
    [self.view addSubview:vocation];
    /////////字体大小
    vocation.font = [UIFont boldSystemFontOfSize:16];
    vocation.sd_layout.topSpaceToView(self.view,100).leftSpaceToView(self.view,30).widthIs(80).heightIs(30);
    vocation.text = @"职        业";
    /*人数*/
    UILabel *people = [UILabel new];
    /////////字体大小
    people.font = [UIFont boldSystemFontOfSize:16];
    [self.view addSubview:people];
    people.sd_layout.topSpaceToView(vocation,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    people.text = @"人        数";
    /*到场时间*/
    UILabel *time = [UILabel new];
    [self.view addSubview:time];
    /////////字体大小
    time.font = [UIFont boldSystemFontOfSize:16];
    time.sd_layout.topSpaceToView(people,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    time.text = @"到场时间";

    /*集体要求*/
    UILabel *demand = [UILabel new];
    [self.view addSubview:demand];
    /////////字体大小
    demand.font = [UIFont boldSystemFontOfSize:16];
    demand.sd_layout.topSpaceToView(time,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    demand.text = @"具体要求";
    /*报酬*/
    UILabel *money = [UILabel new];
    [self.view addSubview:money];
    /////////字体大小
    money.font = [UIFont boldSystemFontOfSize:16];
    money.sd_layout.topSpaceToView(demand,15).leftSpaceToView(self.view,30).widthIs(100).heightIs(30);
    money.text = @"报        酬";

}
- (void)createFeild{
    vocationField = [UITextField new];
    [self.view addSubview:vocationField];
    vocationField.sd_layout.topSpaceToView(self.view,100).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    vocationField.backgroundColor = [UIColor grayColor];
    
    number = [UITextField new];
    [self.view addSubview:number];
    number.sd_layout.topSpaceToView(vocationField,15).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    number.backgroundColor = [UIColor grayColor];
    
    addressField = [UITextField new];
    [self.view addSubview:addressField];
    addressField.sd_layout.topSpaceToView(number,15).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    addressField.backgroundColor = [UIColor grayColor];
    
    demandField = [UITextField new];
    [self.view addSubview:demandField];
    demandField.sd_layout.topSpaceToView(addressField,15).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    demandField.backgroundColor = [UIColor grayColor];
    
    moneyField = [UITextField new];
    [self.view addSubview:moneyField];
    moneyField.sd_layout.topSpaceToView(demandField,15).leftSpaceToView(self.view,110).widthIs(200).heightIs(30);
    moneyField.backgroundColor = [UIColor grayColor];
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
