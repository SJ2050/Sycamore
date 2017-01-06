//
//  ZSPersonUpdateViewController.m
//  Sycamore
//
//  Created by mac on 17/1/3.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSPersonUpdateViewController.h"

@interface ZSPersonUpdateViewController ()
{
    UIView *views;
    UILabel *name;
    UITextField *nameField;
    UITextField *sexField;
    UITextField *ageField;
    UITextField *phoneField;
    UITextField *eduField;
    UITextField *addressField;
}
@end

@implementation ZSPersonUpdateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"修改资料";
    [self setStyle];
    [self createView];
   // [self createField];
}
-  (void)createView{
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
    views.sd_layout.topSpaceToView(self.view,80).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(290);
    views.backgroundColor = FASTCOLOR;
    
    UILabel *lab1 = [UILabel new];
    [views addSubview:lab1];
    lab1.sd_layout.topSpaceToView(views, 45).leftSpaceToView(views,15).rightSpaceToView(views,0).heightIs(1);
    ////////横线的背景颜色
    lab1.backgroundColor =SEGMENTCOLOR;
    
    for (int i =1; i<=4; i++) {
        UILabel *lab = [UILabel new];
        [views addSubview:lab];
        lab.sd_layout.topSpaceToView(lab1, i*50).leftSpaceToView(views,15).rightSpaceToView(views,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =SEGMENTCOLOR;
    }
    /*姓名*/
    name = [UILabel new];
    [views addSubview:name];
    /////////字体大小
    name.font = [UIFont boldSystemFontOfSize:16];
    name.sd_layout.topSpaceToView(views,10).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    name.text = @"姓        名";
    /*性别*/
    UILabel *sex = [UILabel new];
    /////////字体大小
    sex.font = [UIFont boldSystemFontOfSize:16];
    [views addSubview:sex];
    sex.sd_layout.topSpaceToView(name,15).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    sex.text = @"性        别";
    /*年龄*/
    UILabel *age = [UILabel new];
    [views addSubview:age];
    /////////字体大小
    age.font = [UIFont boldSystemFontOfSize:16];
    age.sd_layout.topSpaceToView(sex,20).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    age.text = @"年       龄";
    
    /*联系方式*/
    UILabel *phone = [UILabel new];
    [views addSubview:phone];
    /////////字体大小
    phone.font = [UIFont boldSystemFontOfSize:16];
    phone.sd_layout.topSpaceToView(age,20).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    phone.text = @"联系方式";
    
    /*学历*/
    UILabel *education = [UILabel new];
    [views addSubview:education];
    /////////字体大小
    education.font = [UIFont boldSystemFontOfSize:16];
    education.sd_layout.topSpaceToView(phone,20).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    education.text = @"学       历";
    /*地址*/
    UILabel *address = [UILabel new];
    [views addSubview:address];
    /////////字体大小
    address.font = [UIFont boldSystemFontOfSize:16];
    address.sd_layout.topSpaceToView(education,20).leftSpaceToView(views,30).widthIs(80).heightIs(30);
    address.text = @"地       址";

}
- (void)createField{
    nameField = [UITextField new];
    [views addSubview:nameField];
    nameField.sd_layout.topSpaceToView(views,10).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    nameField.backgroundColor = [UIColor grayColor];
    
    sexField = [UITextField new];
    [views addSubview:sexField];
    sexField.sd_layout.topSpaceToView(nameField,15).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    sexField.backgroundColor = [UIColor grayColor];
    
    ageField = [UITextField new];
    [views addSubview:ageField];
    ageField.sd_layout.topSpaceToView(sexField,20).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    ageField.backgroundColor = [UIColor grayColor];
    
    phoneField = [UITextField new];
    [views addSubview:phoneField];
    phoneField.sd_layout.topSpaceToView(ageField,20).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    phoneField.backgroundColor = [UIColor grayColor];
    
    eduField = [UITextField new];
    [views addSubview:eduField];
    eduField.sd_layout.topSpaceToView(phoneField,20).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    eduField.backgroundColor = [UIColor grayColor];
    
    addressField = [UITextField new];
    [views addSubview:addressField];
    addressField.sd_layout.topSpaceToView(eduField,20).leftSpaceToView(views,110).widthIs(200).heightIs(30);
    addressField.backgroundColor = [UIColor grayColor];

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
