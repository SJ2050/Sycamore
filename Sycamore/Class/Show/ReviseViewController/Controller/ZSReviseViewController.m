//
//  ZSReviseViewController.m
//  Sycamore
//
//  Created by mac on 17/1/1.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSReviseViewController.h"

@interface ZSReviseViewController ()
{
    UIView *oldView;
    UIView *newView;
    UIView *verifyView;
    UITextField *oldPwd;
    UITextField *newPwd;
    UITextField *verifyPwd;
}
@end

@implementation ZSReviseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BGCOLOR;
    self.navigationItem.title = @"修改密码";
    [self setStyle];
    [self createBgView];
    [self createLab];
    [self createPwd];
}
- (void)createBgView{
    oldView = [UIView new];
    [self.view addSubview:oldView];
    oldView.sd_layout.topSpaceToView(self.view,79).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(60);
    oldView.backgroundColor = CUSTOMCOLOR(239, 240, 241);
    
    newView = [UIView new];
    [self.view addSubview:newView];
    newView.sd_layout.topSpaceToView(oldView,15).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(60);
    newView.backgroundColor = CUSTOMCOLOR(239, 240, 241);
    
    UILabel *lab= [UILabel new];
    [self.view addSubview:lab];
    lab.sd_layout.topSpaceToView(newView,0).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(1);
    lab.backgroundColor =CUSTOMCOLOR(211, 212, 213);
    
    
    verifyView = [UIView new];
    [self.view addSubview:verifyView];
    verifyView.sd_layout.topSpaceToView(newView,1).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(60);
    verifyView.backgroundColor = CUSTOMCOLOR(239, 240, 241);
    
    
    
}
- (void)createLab{
    UILabel *oldLab = [UILabel new];
    oldLab.text = @"旧密码";
    oldLab.font = [UIFont boldSystemFontOfSize:18];
    oldLab.textColor = [UIColor blackColor];
    [self.view addSubview:oldLab];
    oldLab.sd_layout.topSpaceToView(self.view,89).leftSpaceToView(self.view,10).widthIs(110).heightIs(40);
    
    UILabel *newLab = [UILabel new];
    newLab.text = @"新密码";
    newLab.font = [UIFont boldSystemFontOfSize:18];
    newLab.textColor = [UIColor blackColor];
    [self.view addSubview:newLab];
    newLab.sd_layout.topSpaceToView(oldView,25).leftSpaceToView(self.view,10).widthIs(110).heightIs(40);
    
    UILabel *verifyLab = [UILabel new];
    verifyLab.text = @"确认新密码";
    verifyLab.font = [UIFont boldSystemFontOfSize:18];
    verifyLab.textColor = [UIColor blackColor];
    [self.view addSubview:verifyLab];
    verifyLab.sd_layout.topSpaceToView(newView,11).leftSpaceToView(self.view,10).widthIs(110).heightIs(40);
    
}
- (void)createPwd{
   
    oldPwd = [UITextField new];
    [self.view addSubview:oldPwd];
    oldPwd.placeholder = @"输入旧密码";
    //得到焦点
    [oldPwd becomeFirstResponder];
    oldPwd.sd_layout.topSpaceToView(self.view,89).leftSpaceToView(self.view,120).widthIs(190).heightIs(40);
    //再次编辑时清空内容
    oldPwd.clearsOnBeginEditing = YES;
    
    newPwd = [UITextField new];
    [self.view addSubview:newPwd];
    newPwd.placeholder = @"设置新密码";
    //得到焦点
    [newPwd becomeFirstResponder];
    newPwd.sd_layout.topSpaceToView(oldView,25).leftSpaceToView(self.view,120).widthIs(190).heightIs(40);
    //再次编辑时清空内容
    newPwd.clearsOnBeginEditing = YES;
    
    verifyPwd = [UITextField new];
    [self.view addSubview:verifyPwd];
    verifyPwd.placeholder = @"输入新密码";
    //得到焦点
    [verifyPwd becomeFirstResponder];
    verifyPwd.sd_layout.topSpaceToView(newView,11).leftSpaceToView(self.view,120).widthIs(190).heightIs(40);
    //再次编辑时清空内容
    verifyPwd.clearsOnBeginEditing = YES;
    
    UIButton *fixBtn = [UIButton new];
    [self.view addSubview:fixBtn];
    fixBtn.sd_layout.topSpaceToView(verifyView,50).leftSpaceToView(self.view,40).rightSpaceToView(self.view,40).heightIs(40);
    [fixBtn setTitle:@"确定" forState:UIControlStateNormal];
    fixBtn.backgroundColor = MAINCOLOR;
    fixBtn.layer.cornerRadius = 5;
    fixBtn.layer.masksToBounds = YES;
    
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
