//
//  ZSPersonalRegViewController.m
//  Sycamore
//
//  Created by mac on 16/12/31.
//  Copyright © 2016年 teacher. All rights reserved.
//

#import "ZSPersonalRegViewController.h"
#import "ZSBusinessRegViewController.h"

@interface ZSPersonalRegViewController ()
{
    UITextField *userField;
    UITextField *pwdField;
    UIButton *segBtn;
    UITextField *testing;//验证码
    UIButton *sending;//发送验证码
}
@end

@implementation ZSPersonalRegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
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
    [btn setTitle:@"企业注册" forState:UIControlStateNormal];
    //////字体
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //添加事件
    [btn addTarget:self action:@selector(pushBtn) forControlEvents:UIControlEventTouchUpInside];
    UILabel *lab= [UILabel new];
    [views addSubview:lab];
    lab.sd_layout.topSpaceToView(views,30).centerXEqualToView(views).widthIs(80).heightIs(30);
    lab.text = @"个人注册";
    lab.textColor = [UIColor whiteColor];
    lab.font = [UIFont boldSystemFontOfSize:18];
    
    UIImageView *backImg = [UIImageView new];
    [views addSubview:backImg];
    backImg.sd_layout.topSpaceToView(views,30).leftSpaceToView(views,10).widthIs(30).heightIs(30);
    backImg.image = [UIImage imageNamed:@"123.jpg"];
}
////企业注册
- (void)pushBtn{
    ZSBusinessRegViewController *business = [[ZSBusinessRegViewController alloc] init];
     [self presentViewController:business animated:YES completion:nil];
}
-  (void)createField{
    /*用户名文本框*/
    userField = [UITextField new];
    [self.view addSubview:userField];
    ////////////左视图    用户文本框的图标
    UIImageView *loginImg = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 15, 15)];
    userField.leftView = loginImg;
    loginImg.image = [UIImage imageNamed:@"yonghu.png"];
    //图片显示样式
    userField.leftViewMode = UITextFieldViewModeAlways;
    userField.contentVerticalAlignment= UIControlContentVerticalAlignmentCenter;
    userField.font = [UIFont systemFontOfSize:12];    userField.placeholder = @"请输入手机号";
    //得到焦点
    [userField becomeFirstResponder];
    userField.sd_layout.topSpaceToView(self.view,80).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
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
    UIImageView *pwdImg = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 15, 20)];
    
    pwdField.leftView = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 20, 20)];
    pwdField.leftView = pwdImg;
    pwdImg.image = [UIImage imageNamed:@"mima.png"];
    //图片显示样式
    pwdField.leftViewMode = UITextFieldViewModeAlways;
    pwdField.contentVerticalAlignment= UIControlContentVerticalAlignmentCenter;
    pwdField.font = [UIFont systemFontOfSize:12];
    pwdField.placeholder = @"请输入密码";
    //再次编辑时清空内容
    pwdField.clearsOnBeginEditing = YES;
    //设置清空按钮的显示
    //    userText.clearButtonMode = UITextFieldViewModeAlways;
     pwdField.sd_layout.topSpaceToView(userField,20).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    pwdField.layer.cornerRadius = 5;
    pwdField.layer.masksToBounds = YES;
    ////////文本框颜色
    pwdField.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    /*
     验证码
     */
    testing = [UITextField new];
    [self.view addSubview:testing];
    testing.sd_layout.topSpaceToView(pwdField,30).leftSpaceToView(self.view,50).rightSpaceToView(self.view,50).heightIs(30);
    testing.placeholder = @"验证码";
    //////文本框背景颜色
    testing.backgroundColor = CUSTOMCOLOR(253, 240, 243);
    UILabel *imgView = [UILabel new];
    [testing addSubview:imgView];
    imgView.sd_layout.topSpaceToView(testing,5).bottomSpaceToView(testing,5).rightSpaceToView(testing,100).widthIs(2);
    /////////颜色
    imgView.backgroundColor = [UIColor grayColor];
    sending = [UIButton new];
    [testing addSubview:sending];
    sending.sd_layout.rightSpaceToView(testing,0).widthIs(100).heightIs(30);
    [sending setTitle:@"发送验证码" forState:UIControlStateNormal];
    ///////字体大小
    sending.titleLabel.font = [UIFont systemFontOfSize:14];
    [sending setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    sending.tag = 1;
    //添加事件
    [sending addTarget:self action:@selector(clickSending) forControlEvents:UIControlEventTouchUpInside];
    /*注册按钮*/
    segBtn = [UIButton new];
    [self.view addSubview:segBtn];
    segBtn.sd_layout.topSpaceToView(testing,50).leftSpaceToView(self.view,30).rightSpaceToView(self.view,30).heightIs(40);
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
//发送验证码
- (void)clickSending{
    
  
}
///注册
- (void)clickSeg{
    //用户名
    NSString *string = userField.text;
    if (![string isKindOfClass:[NSNull class]]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"手机号不能为空" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
       
    }else if(userField.text.length <5 || userField.text.length>16){
        NSLog(@"用户不合法");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名不合法长度必须在5-16之间" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
        userField.text = @"";
        [userField becomeFirstResponder];
        return;
    }
    NSString *string1 = pwdField.text;
    //密码
    if (pwdField.text.length <6 || pwdField.text.length>16) {
        NSLog(@"密码不合法");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"密码不合法长度必须在6-16之间" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
        pwdField.text = @"";
        [pwdField becomeFirstResponder];
        return;
    }else if ([string1 isKindOfClass:[NSNull class]]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"密码不能为空" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    }

}
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
