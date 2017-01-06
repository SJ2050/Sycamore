//
//  ZSBusinessRegViewController.m
//  Sycamore
//
//  Created by mac on 16/12/31.
//  Copyright © 2016年 teacher. All rights reserved.
//

#import "ZSBusinessRegViewController.h"
#import "ZSPersonalRegViewController.h"

@interface ZSBusinessRegViewController ()
{
    UITextField *userField;
    UITextField *pwdField;
    UITextField *businessName;//企业名称
    UITextField *mechanismField;//机构代码
    UITextField *unitField;//单位法人
    UITextField *emailField;
    UITextField *phoneField;
    UITextField *synopsisField;//简介
    UIButton *segBtn;
}
@end

@implementation ZSBusinessRegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view .backgroundColor = [UIColor whiteColor];
    [self createView];
    [self createField];
}
- (void)createView{
    UIView *views = [UIView new];
    [self.view addSubview:views];
    views.sd_layout.topSpaceToView(self.view,0).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(64);
    ///////颜色
    views.backgroundColor = STATUSCOLOR;
    
    /*
     企业注册
     */
    UIButton *btn = [UIButton new];
    [views addSubview:btn];
    btn.sd_layout.topSpaceToView(views,30).rightSpaceToView(views,5).widthIs(60).heightIs(25);
    [btn setTitle:@"个人注册" forState:UIControlStateNormal];
    //////字体
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //添加事件
    [btn addTarget:self action:@selector(pushBtn) forControlEvents:UIControlEventTouchUpInside];
    UILabel *lab= [UILabel new];
    [views addSubview:lab];
    lab.sd_layout.topSpaceToView(views,30).centerXEqualToView(views).widthIs(80).heightIs(30);
    lab.text = @"企业注册";
    lab.textColor = [UIColor whiteColor];
    lab.font = [UIFont boldSystemFontOfSize:18];
    
    UIImageView *backImg = [UIImageView new];
    [views addSubview:backImg];
    backImg.sd_layout.topSpaceToView(views,30).leftSpaceToView(views,10).widthIs(30).heightIs(30);
    backImg.image = [UIImage imageNamed:@"123.jpg"];
}
- (void)pushBtn{
    ZSPersonalRegViewController *regCtl = [[ZSPersonalRegViewController alloc] init];
    
    [self presentViewController:regCtl animated:YES completion:nil];
}
-  (void)createField{
    /*用户名文本框*/
    userField = [UITextField new];
    [self.view addSubview:userField];
    ////////////左视图    用户文本框的图标
    UIImageView *loginImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    loginImg.image = [UIImage imageNamed:@".png"];
    
    userField.leftView = loginImg;
    userField.placeholder = @"请输入手机号";
    //得到焦点
    [userField becomeFirstResponder];
    userField.sd_layout.topSpaceToView(self.view,70).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    userField.layer.cornerRadius = 5;
    userField.layer.masksToBounds = YES;
    //再次编辑时清空内容
    userField.clearsOnBeginEditing = YES;
    /////////文本框颜色
    userField.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    
    /*密码文本框*/
    pwdField = [UITextField new];
    [self.view addSubview:pwdField];
    [pwdField becomeFirstResponder];
    ////////////左视图    用户文本框的图标
    UIImageView *segImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    segImg.image = [UIImage imageNamed:@".png"];
    userField.leftView = segImg;
    //userText.leftViewMode = UITextFieldViewModeAlways;
    pwdField.placeholder = @"请输入密码";
    //再次编辑时清空内容
    pwdField.clearsOnBeginEditing = YES;
    //设置清空按钮的显示
    //    userText.clearButtonMode = UITextFieldViewModeAlways;
    pwdField.sd_layout.topSpaceToView(userField,15).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    pwdField.layer.cornerRadius = 5;
    pwdField.layer.masksToBounds = YES;
    ////////文本框颜色
    pwdField.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    /*
     企业名称
     */
    businessName = [UITextField new];
    [self.view addSubview:businessName];
    businessName.sd_layout.topSpaceToView(pwdField,15).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    businessName.placeholder = @"企业名称";
    businessName.layer.cornerRadius = 5;
    businessName.layer.masksToBounds = YES;
    //再次编辑时清空内容
    businessName.clearsOnBeginEditing = YES;
    ////////////左视图    用户文本框的图标
    UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    nameImg.image = [UIImage imageNamed:@".png"];
    businessName.leftView = nameImg;
    //userText.leftViewMode = UITextFieldViewModeAlways;
    //////文本框背景颜色
    businessName.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    
    /*
     机构代码
     */
    mechanismField = [UITextField new];
    [self.view addSubview:mechanismField];
    mechanismField.sd_layout.topSpaceToView(businessName,15).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    mechanismField.placeholder = @"机构代码(选填)";
    mechanismField.layer.cornerRadius = 5;
    mechanismField.layer.masksToBounds = YES;
    //再次编辑时清空内容
    mechanismField.clearsOnBeginEditing = YES;
    ////////////左视图    用户文本框的图标
    UIImageView *mechanismImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    mechanismImg.image = [UIImage imageNamed:@".png"];
    mechanismField.leftView = mechanismImg;
    //userText.leftViewMode = UITextFieldViewModeAlways;
    //////文本框背景颜色
    mechanismField.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    
    /*
     单位法人
     */
    unitField = [UITextField new];
    [self.view addSubview:unitField];
    unitField.sd_layout.topSpaceToView(mechanismField,15).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    unitField.placeholder = @"单位法人（选填）";
    unitField.layer.cornerRadius = 5;
    unitField.layer.masksToBounds = YES;
    //再次编辑时清空内容
    unitField.clearsOnBeginEditing = YES;
    ////////////左视图    用户文本框的图标
    UIImageView *unitImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    unitImg.image = [UIImage imageNamed:@".png"];
    unitField.leftView = unitImg;
    //userText.leftViewMode = UITextFieldViewModeAlways;
    //////文本框背景颜色
    unitField.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    
    /*
     邮箱
     */
    emailField = [UITextField new];
    [self.view addSubview:emailField];
    emailField.sd_layout.topSpaceToView(unitField,15).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    emailField.placeholder = @"邮箱";
    emailField.layer.cornerRadius = 5;
    emailField.layer.masksToBounds = YES;
    //再次编辑时清空内容
    emailField.clearsOnBeginEditing = YES;
    ////////////左视图    用户文本框的图标
    UIImageView *emailImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    emailImg.image = [UIImage imageNamed:@".png"];
    emailField.leftView = emailImg;
    //userText.leftViewMode = UITextFieldViewModeAlways;
    //////文本框背景颜色
    emailField.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    
    /*
     电话
     */
    phoneField = [UITextField new];
    [self.view addSubview:phoneField];
    phoneField.sd_layout.topSpaceToView(emailField,15).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    phoneField.placeholder = @"电话";
    phoneField.layer.cornerRadius = 5;
    phoneField.layer.masksToBounds = YES;
    //再次编辑时清空内容
    phoneField.clearsOnBeginEditing = YES;
    ////////////左视图    用户文本框的图标
    UIImageView *phoneImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    phoneImg.image = [UIImage imageNamed:@".png"];
    phoneField.leftView = phoneImg;
    //userText.leftViewMode = UITextFieldViewModeAlways;
    //////文本框背景颜色
    phoneField.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    
    /*
     简介
     */
    synopsisField = [UITextField new];
    [self.view addSubview:synopsisField];
    synopsisField.sd_layout.topSpaceToView(phoneField,15).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    synopsisField.placeholder = @"简介";
    synopsisField.layer.cornerRadius = 5;
    synopsisField.layer.masksToBounds = YES;
    //再次编辑时清空内容
    synopsisField.clearsOnBeginEditing = YES;
    ////////////左视图    用户文本框的图标
    UIImageView *synopsisImg = [[UIImageView alloc] initWithFrame:CGRectMake(1, 0, 30, 30)];
    synopsisImg.image = [UIImage imageNamed:@".png"];
    synopsisField.leftView = synopsisImg;
    //userText.leftViewMode = UITextFieldViewModeAlways;
    //////文本框背景颜色
    synopsisField.backgroundColor = CUSTOMCOLOR(253, 240, 243);

    /*注册按钮*/
    segBtn = [UIButton new];
    [self.view addSubview:segBtn];
    segBtn.sd_layout.topSpaceToView(synopsisField,25).leftSpaceToView(self.view,30).rightSpaceToView(self.view,30).heightIs(40);
    [segBtn setTitle:@"注册" forState:UIControlStateNormal];
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

- (void)clickSeg{
   
}
//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
//    return NO;
//}       // return NO to disallow editing.
//
//- (void)textFieldDidBeginEditing:(UITextField *)textField{
//
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //失去焦点
    for (UIView *views in self.view.subviews) {
        if([views isKindOfClass:[UITextField class]])
        {
            UITextField *filed = (UITextField *)views;
            //失去焦点
            [filed resignFirstResponder];
        }
    }
    
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
