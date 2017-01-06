//
//  ZSLoginViewController.m
//  Sycamore
//
//  Created by mac on 16/12/29.
//  Copyright © 2016年 teacher. All rights reserved.
//

#import "ZSLoginViewController.h"
#import "ZSPersonalRegViewController.h"


@interface ZSLoginViewController ()
{
//    UIImageView *imgView;
    UITextField *userField;
    UITextField *pwdField;
    UIButton *loginBtn;
}
@property (strong,nonatomic)UIImageView *imgView;

@end

@implementation ZSLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self createStatus];
    [self createView];
    [self createLab];
    
}
- (void)createStatus{
    //设置状态栏的颜色
     UIView *statusBarView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
    statusBarView.backgroundColor = STATUSCOLOR;
    [self.view addSubview:statusBarView];

}
- (void)createView{
    self.imgView = [UIImageView new];
    //登录界面头像
    self.imgView.image = [UIImage imageNamed:@"123.jpg"];
    [self.view addSubview:self.imgView];
    self.imgView.sd_layout.topSpaceToView(self.view,64).leftSpaceToView(self.view,120).rightSpaceToView(self.view,120).heightIs(80);
    /*登录文本框*/
    userField = [UITextField new];
    [self.view addSubview:userField];
    ////////////左视图    用户文本框的图标
     UIImageView *loginImg = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 15, 15)];
     userField.leftView = loginImg;
    loginImg.image = [UIImage imageNamed:@"yonghu.png"];
    //图片显示样式
    userField.leftViewMode = UITextFieldViewModeAlways;
    userField.contentVerticalAlignment= UIControlContentVerticalAlignmentCenter;
    userField.font = [UIFont systemFontOfSize:12];
    userField.placeholder = @"请输入用户名";
    //得到焦点
    [userField becomeFirstResponder];
    userField.sd_layout.topSpaceToView(self.imgView,50).leftSpaceToView(self.view,30).rightSpaceToView(self.view,30).heightIs(30);
    userField.layer.cornerRadius = 5;
    userField.layer.masksToBounds = YES;
    //再次编辑时清空内容
     userField.clearsOnBeginEditing = YES;
    /////////文本框颜色
    userField.backgroundColor = TEXTCOLOR;
    
    /*密码文本框*/
    pwdField = [UITextField new];
    [self.view addSubview:pwdField];
    [pwdField becomeFirstResponder];
    
    pwdField.placeholder = @"请输入密码";
    //再次编辑时清空内容
    pwdField.clearsOnBeginEditing = YES;
    //设置清空按钮的显示
//    userText.clearButtonMode = UITextFieldViewModeAlways;
    pwdField.sd_layout.topSpaceToView(userField,20).leftSpaceToView(self.view,30).rightSpaceToView(self.view,30).heightIs(30);
    pwdField.layer.cornerRadius = 5;
    pwdField.layer.masksToBounds = YES;
    ////////文本框颜色
    pwdField.backgroundColor = TEXTCOLOR;
    
    ////////////左视图    用户文本框的图标
    UIImageView *pwdImg = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 15, 20)];
    
    pwdField.leftView = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 20, 20)];
    pwdField.leftView = pwdImg;
    pwdImg.image = [UIImage imageNamed:@"mima.png"];
    //图片显示样式
    pwdField.leftViewMode = UITextFieldViewModeAlways;
    pwdField.contentVerticalAlignment= UIControlContentVerticalAlignmentCenter;
    pwdField.font = [UIFont systemFontOfSize:12];
    //添加事件
    
    
    
    /*登录按钮*/
    loginBtn = [UIButton new];
    [self.view addSubview:loginBtn];
    loginBtn.sd_layout.topSpaceToView(pwdField,30).leftSpaceToView(self.view,30).rightSpaceToView(self.view,30).heightIs(40);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];

    ////////字体大小
    loginBtn.titleLabel.font = [UIFont boldSystemFontOfSize:24];
    loginBtn.layer.cornerRadius = 5;
    loginBtn.layer.masksToBounds = YES;
    /////////字体颜色
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //////////登录按钮背景颜色
    loginBtn.backgroundColor = MAINCOLOR;
    //添加事件
    [loginBtn addTarget:self action:@selector(clickLogin) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)clickLogin{
    //用户名
    if (userField.text.length <5 || userField.text.length>16) {
        NSLog(@"用户不合法");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名不合法长度必须在5-16之间" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
        userField.text = @"";
        [userField becomeFirstResponder];
        return;
    }
    
    //密码
    if (pwdField.text.length <6 || pwdField.text.length>16) {
        NSLog(@"密码不合法");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"密码不合法长度必须在6-16之间" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
        pwdField.text = @"";
        [pwdField becomeFirstResponder];
        return;
    }

}
- (void)createLab{
    UIButton *forgetBtn = [[UIButton alloc] init];
    [self.view addSubview:forgetBtn];
    forgetBtn.sd_layout.topSpaceToView(loginBtn,10).leftSpaceToView(self.view,20).widthIs(80).heightIs(20);
    [forgetBtn setTitle:@"忘记密码？" forState:UIControlStateNormal];
    //////字体大小
    forgetBtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
    ////////忘记密码字体颜色
    [forgetBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    UIButton *segBtn = [UIButton new];
    [self.view addSubview:segBtn];
    segBtn.sd_layout.topSpaceToView(loginBtn,10).rightSpaceToView(self.view,20).widthIs(80).heightIs(20);
    [segBtn setTitle:@"新用户注册" forState:UIControlStateNormal];
    //////字体大小
    segBtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
    ////////字体颜色
    [segBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    //添加事件
    [segBtn addTarget:self action:@selector(clickSeg) forControlEvents:UIControlEventTouchUpInside];
}
- (void)clickSeg{
    ZSPersonalRegViewController *segCtl = [[ZSPersonalRegViewController alloc] init];
    [self presentViewController:segCtl animated:YES completion:nil];
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
