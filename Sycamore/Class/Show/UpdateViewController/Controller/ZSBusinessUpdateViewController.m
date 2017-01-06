//
//  ZSBusinessUpdateViewController.m
//  Sycamore
//
//  Created by mac on 17/1/3.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSBusinessUpdateViewController.h"

@interface ZSBusinessUpdateViewController ()
{
    UIView *views;
    UIView *downView;
    UILabel *name;
    UITextField *corporationName;//企业代码
    UITextField *codeField;//组织机构代码
    UITextField *unitField;//单位法人
    UITextField *personField;//联系人
    UITextField *phoneField;//联系电话
    
    UITextField *introField;//企业简介
    UITextField *operationField;//承接任务
    UITextField *emailField;//企业邮箱
    UITextField *addressField;//企业地址
    UITextField *idField;//支护账号
}
@end

@implementation ZSBusinessUpdateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"修改资料";
    [self setStyle];
    [self createTopView];
    [self createDownView];
//    [self createTopField];
//    [self createDownField];

}
-  (void)createTopView{
    /*
     设置图标
     */
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [btn setTitle:@"完成" forState:UIControlStateNormal];
    //添加事件
   // [btn addTarget:self action:@selector(pushBtn) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithCustomView:btn];
    //视图的顶点 坐标被重写  大小可以改变
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    
    
    views = [UIView new];
    [self.view addSubview:views];
    views.sd_layout.topSpaceToView(self.view,80).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(220);
    views.backgroundColor = FASTCOLOR;
    
    UILabel *lab1 = [UILabel new];
    [views addSubview:lab1];
    lab1.sd_layout.topSpaceToView(views, 40).leftSpaceToView(views,15).rightSpaceToView(views,0).heightIs(1);
    ////////横线的背景颜色
    lab1.backgroundColor =SEGMENTCOLOR;
    
    for (int i =1; i<=3; i++) {
        UILabel *lab = [UILabel new];
        [views addSubview:lab];
        lab.sd_layout.topSpaceToView(lab1, i*45).leftSpaceToView(views,15).rightSpaceToView(views,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =SEGMENTCOLOR;
    }
    /*企业名*/
    name = [UILabel new];
    [views addSubview:name];
    /////////字体大小
    name.font = [UIFont boldSystemFontOfSize:16];
    name.sd_layout.topSpaceToView(views,10).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    name.text = @"企业名";
    /*自治机构代码*/
    UILabel *sex = [UILabel new];
    /////////字体大小
    sex.font = [UIFont boldSystemFontOfSize:16];
    [views addSubview:sex];
    sex.sd_layout.topSpaceToView(name,10).leftSpaceToView(views,30).widthIs(100).heightIs(30);
    sex.text = @"组织机构代码";
    /*单位法人*/
    UILabel *age = [UILabel new];
    [views addSubview:age];
    /////////字体大小
    age.font = [UIFont boldSystemFontOfSize:16];
    age.sd_layout.topSpaceToView(sex,15).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    age.text = @"单位法人";
    
    /*联系人*/
    UILabel *phone = [UILabel new];
    [views addSubview:phone];
    /////////字体大小
    phone.font = [UIFont boldSystemFontOfSize:16];
    phone.sd_layout.topSpaceToView(age,15).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    phone.text = @"联系人";
    
    /*联系电话*/
    UILabel *education = [UILabel new];
    [views addSubview:education];
    /////////字体大小
    education.font = [UIFont boldSystemFontOfSize:16];
    education.sd_layout.topSpaceToView(phone,15).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    education.text = @"联系电话";
    
}
- (void)createTopField{
    //企业名
    corporationName = [UITextField new];
    [views addSubview:corporationName];
    corporationName.sd_layout.topSpaceToView(views,10).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    corporationName.backgroundColor = [UIColor grayColor];
    //组织机构代码
    codeField = [UITextField new];
    [views addSubview:codeField];
    codeField.sd_layout.topSpaceToView(corporationName,10).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    codeField.backgroundColor = [UIColor grayColor];
    //单位法人
    unitField = [UITextField new];
    [views addSubview:unitField];
    unitField.sd_layout.topSpaceToView(codeField,15).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    unitField.backgroundColor = [UIColor grayColor];
    //联系人
    personField = [UITextField new];
    [views addSubview:personField];
    personField.sd_layout.topSpaceToView(unitField,15).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    personField.backgroundColor = [UIColor grayColor];
    //联系电话
    phoneField = [UITextField new];
    [views addSubview:phoneField];
    phoneField.sd_layout.topSpaceToView(personField,15).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    phoneField.backgroundColor = [UIColor grayColor];
    
}
- (void)createDownView{
    downView = [UIView new];
    [self.view addSubview:downView];
    downView.sd_layout.topSpaceToView(views,20).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(220);
    downView.backgroundColor = FASTCOLOR;
    
    UILabel *lab1 = [UILabel new];
    [downView addSubview:lab1];
    lab1.sd_layout.topSpaceToView(downView, 40).leftSpaceToView(downView,15).rightSpaceToView(downView,0).heightIs(1);
    ////////横线的背景颜色
    lab1.backgroundColor =SEGMENTCOLOR;
    
    for (int i =1; i<=3; i++) {
        UILabel *lab = [UILabel new];
        [downView addSubview:lab];
        lab.sd_layout.topSpaceToView(lab1, i*45).leftSpaceToView(downView,15).rightSpaceToView(downView,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =SEGMENTCOLOR;
    }
    /*企业简介*/
    name = [UILabel new];
    [downView addSubview:name];
    /////////字体大小
    name.font = [UIFont boldSystemFontOfSize:16];
    name.sd_layout.topSpaceToView(downView,10).leftSpaceToView(downView,30).widthIs(80).heightIs(30);
    name.text = @"企业简介";
    /*承接业务*/
    UILabel *sex = [UILabel new];
    /////////字体大小
    sex.font = [UIFont boldSystemFontOfSize:16];
    [downView addSubview:sex];
    sex.sd_layout.topSpaceToView(name,10).leftSpaceToView(downView,30).widthIs(80).heightIs(30);
    sex.text = @"承接业务";
    /*企业邮箱*/
    UILabel *age = [UILabel new];
    [downView addSubview:age];
    /////////字体大小
    age.font = [UIFont boldSystemFontOfSize:16];
    age.sd_layout.topSpaceToView(sex,15).leftSpaceToView(downView,30).widthIs(80).heightIs(30);
    age.text = @"企业邮箱";
    
    /*企业地址*/
    UILabel *phone = [UILabel new];
    [downView addSubview:phone];
    /////////字体大小
    phone.font = [UIFont boldSystemFontOfSize:16];
    phone.sd_layout.topSpaceToView(age,15).leftSpaceToView(downView,30).widthIs(80).heightIs(30);
    phone.text = @"企业地址";
    
    /*支付账号*/
    UILabel *education = [UILabel new];
    [downView addSubview:education];
    /////////字体大小
    education.font = [UIFont boldSystemFontOfSize:16];
    education.sd_layout.topSpaceToView(phone,15).leftSpaceToView(downView,30).widthIs(80).heightIs(30);
    education.text = @"支付账号";


}
- (void)createDownField{
    //企业简介
    introField = [UITextField new];
    [downView addSubview:introField];
    introField.sd_layout.topSpaceToView(downView,10).leftSpaceToView(downView,110).widthIs(200).heightIs(30);
    introField.backgroundColor = [UIColor grayColor];
    //承接业务
    operationField = [UITextField new];
    [downView addSubview:operationField];
    operationField.sd_layout.topSpaceToView(introField,10).leftSpaceToView(downView,110).widthIs(200).heightIs(30);
    operationField.backgroundColor = [UIColor grayColor];
    //企业邮箱
    emailField = [UITextField new];
    [downView addSubview:emailField];
    emailField.sd_layout.topSpaceToView(operationField,15).leftSpaceToView(downView,110).widthIs(200).heightIs(30);
    emailField.backgroundColor = [UIColor grayColor];
    //企业地址
    addressField = [UITextField new];
    [downView addSubview:addressField];
    addressField.sd_layout.topSpaceToView(emailField,15).leftSpaceToView(downView,110).widthIs(200).heightIs(30);
    addressField.backgroundColor = [UIColor grayColor];
    //支护账号
    idField = [UITextField new];
    [downView addSubview:idField];
    idField.sd_layout.topSpaceToView(addressField,15).leftSpaceToView(downView,110).widthIs(200).heightIs(30);
    idField.backgroundColor = [UIColor grayColor];
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
