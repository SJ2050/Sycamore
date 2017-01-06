//
//  ZSBackpwdViewController.m
//  Sycamore
//
//  Created by mac on 17/1/3.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSBackpwdViewController.h"

@interface ZSBackpwdViewController ()
{
    UITextField *userField;
    UITextField *newPwds;
    UITextField *newPwd;
    UIButton *segBtn;
    UITextField *testing;//验证码
    UIButton *sending;//发送验证码
}
@end

@implementation ZSBackpwdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"找回密码";
    [self setStyle];
    [self createField];
}
- (void)createField{
    userField = [UITextField new];
    [self.view addSubview:userField];
    userField.sd_layout.topSpaceToView(self.view,80).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    userField.placeholder = @"请输入手机号";
    //////文本框背景颜色
    userField.backgroundColor = TEXTCOLOR;
    UILabel *imgView = [UILabel new];
    [userField addSubview:imgView];
    imgView.sd_layout.topSpaceToView(userField,5).bottomSpaceToView(userField,5).rightSpaceToView(userField,100).widthIs(1);
    userField.layer.cornerRadius= 5;
    userField.layer.masksToBounds = YES;
    /////////颜色
    imgView.backgroundColor = CUSTOMCOLOR(229, 229, 229);
    sending = [UIButton new];
    [userField addSubview:sending];
    sending.sd_layout.rightSpaceToView(userField,0).widthIs(100).heightIs(30);
    [sending setTitle:@"发送验证码" forState:UIControlStateNormal];
    ///////字体大小
    sending.titleLabel.font = [UIFont systemFontOfSize:14];
    [sending setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    sending.tag = 1;
    //添加事件
    [sending addTarget:self action:@selector(clickSending) forControlEvents:UIControlEventTouchUpInside];
    
    /*验证码*/
    testing = [UITextField new];
    [self.view addSubview:testing];
    [testing becomeFirstResponder];
    //userText.leftViewMode = UITextFieldViewModeAlways;
    testing.placeholder = @"请输入验证码";
    //再次编辑时清空内容
    testing.clearsOnBeginEditing = YES;
    //设置清空按钮的显示
    //    userText.clearButtonMode = UITextFieldViewModeAlways;
    testing.sd_layout.topSpaceToView(userField,20).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    testing.layer.cornerRadius = 5;
    testing.layer.masksToBounds = YES;
    ////////文本框颜色
    testing.backgroundColor = TEXTCOLOR;
    /*
     新密码
     */
    newPwd = [UITextField new];
    [self.view addSubview:newPwd];
    newPwd.sd_layout.topSpaceToView(testing,20).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    newPwd.placeholder = @"请输入新密码";
    //////文本框背景颜色
    newPwd.backgroundColor = TEXTCOLOR;
    newPwd.layer.cornerRadius = 5;
    newPwd.layer.masksToBounds = YES;
    /*
     再次输入新密码
     */
    newPwds = [UITextField new];
    [self.view addSubview:newPwds];
    newPwds.sd_layout.topSpaceToView(newPwd,20).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    newPwds.placeholder = @"再次输入新密码";
    //////文本框背景颜色
    newPwds.backgroundColor = TEXTCOLOR;
    newPwds.layer.cornerRadius = 5;
    newPwds.layer.masksToBounds = YES;
   
   
    /*注册按钮*/
    segBtn = [UIButton new];
    [self.view addSubview:segBtn];
    segBtn.sd_layout.topSpaceToView(newPwds,50).leftSpaceToView(self.view,30).rightSpaceToView(self.view,30).heightIs(40);
    [segBtn setTitle:@"确定" forState:UIControlStateNormal];
    ////////字体大小
    segBtn.titleLabel.font = [UIFont boldSystemFontOfSize:24];
    segBtn.layer.cornerRadius = 5;
    segBtn.layer.masksToBounds = YES;
    /////////字体颜色
    [segBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //////////登录按钮背景颜色
    segBtn.backgroundColor = MAINCOLOR;
    //添加事件
    [segBtn addTarget:self action:@selector(clickSeg) forControlEvents:UIControlEventTouchUpInside];
}
///////发送验证码的方法
- (void)clickSending{
   
}
////注册按钮方法
- (void)clickSeg{

   
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
