//
//  ZSBusinessCenterTableViewController.m
//  Sycamore
//
//  Created by mac on 17/1/1.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSBusinessCenterTableViewController.h"
#import "ZSReviseViewController.h"
#import "ZSBusinessUpdateViewController.h"
#import "ZSBussiessCollTableViewController.h"
#import "ZSBussinessAccountViewController.h"
#import "ZSBussiessEnrollViewController.h"

@interface ZSBusinessCenterTableViewController ()
{
    NSArray *dataArray;
    UIView *views;
    UIView *downView;
    UIImageView *imgView;//头像
    UILabel *nickName;//昵称
}
@end

@implementation ZSBusinessCenterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = BGCOLOR;
    self.navigationItem.title = @"企业";
    
    [self dataList];
    [self down];
}
- (void)dataList{
    //创建头视图
    views = [UIView  new] ;
    self.tableView.tableHeaderView = views;
    views.sd_layout.topSpaceToView(self.tableView,64).leftSpaceToView(self.tableView,0).rightSpaceToView(self.tableView,0).heightIs(150);
    ////////头像
    imgView = [UIImageView new];
    [views addSubview:imgView];
    imgView.sd_layout.topSpaceToView(views,10).leftSpaceToView(views,120).rightSpaceToView(views,120).heightIs(80);
    imgView.image = [UIImage imageNamed:@"123.jpg"];
    //////昵称
    nickName = [UILabel new];
    [views addSubview:nickName];
    nickName.sd_layout.topSpaceToView(imgView,10).leftSpaceToView(views,120).rightSpaceToView(views,120).heightIs(30);
    nickName.text = @"昵称";
    nickName.textAlignment = NSTextAlignmentCenter;
    
    dataArray = @[@"消        息",@"编辑资料",@"好友列表",@"个人账户",@"修改密码",@"清除缓存",@"报  名  表"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"acell"];
    if(!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"acell"];
    }
    if (indexPath.section == 0) {
        cell.textLabel.text = dataArray[indexPath.row];
        
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        //        SJYJTableViewController *yjCtl = [[SJYJTableViewController alloc] init];
        //        yjCtl.hidesBottomBarWhenPushed = YES;
        //        [self.navigationController pushViewController:yjCtl animated:YES];
    }else if (indexPath.row ==1){
        ZSBusinessUpdateViewController *updateCtl = [[ZSBusinessUpdateViewController alloc] init];
        updateCtl.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:updateCtl animated:YES];
    }else if (indexPath.row ==2){
        ZSBussiessCollTableViewController *collectCtl = [[ZSBussiessCollTableViewController alloc] init];
        collectCtl.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:collectCtl animated:YES];
    }else if (indexPath.row ==3){
        ZSBussinessAccountViewController *accountCtl = [[ZSBussinessAccountViewController alloc] init];
        accountCtl.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:accountCtl animated:YES];
    }else if (indexPath.row ==4){
        ZSReviseViewController *reviseCtl = [[ZSReviseViewController alloc] init];
        reviseCtl.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:reviseCtl animated:YES];
    }else if (indexPath.row ==6){
        ZSBussiessEnrollViewController *enrollCtl = [[ZSBussiessEnrollViewController alloc] init];
        enrollCtl.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:enrollCtl animated:YES];
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60;
}
- (void)down{
    downView = [UIView new];
    self.tableView.tableFooterView = downView;
    downView.sd_layout.topSpaceToView(self.tableView,dataArray.count*60).leftSpaceToView(self.tableView,0).rightSpaceToView(self.tableView,0).heightIs(100);
    UIButton *exitBtn = [UIButton new];
    [downView addSubview:exitBtn];
    exitBtn.sd_layout.topSpaceToView(downView,30).leftSpaceToView(downView,40).rightSpaceToView(downView,40).heightIs(40);
    [exitBtn setTitle:@"退出登录" forState:UIControlStateNormal];
    exitBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    [exitBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    exitBtn.backgroundColor = MAINCOLOR;
    exitBtn.layer.cornerRadius = 5;
    exitBtn.layer.masksToBounds=YES;
    [exitBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

//设置状态栏字体颜色
-(UIStatusBarStyle)preferredStatusBarStyle
{
    //1 默认的黑色 (UIStatusBarStyleDefault ）
    //2  白色（UIStatusBarStyleLightContent）
    return UIStatusBarStyleLightContent;  //默认的值是黑色的
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
