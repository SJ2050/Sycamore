//
//  ZSPersonaldetailViewController.m
//  Sycamore
//
//  Created by mac on 17/1/3.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSPersonaldetailViewController.h"

@interface ZSPersonaldetailViewController ()
{
    UILabel *introLab;
    UIView *views;
}
@end

@implementation ZSPersonaldetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = BGCOLOR;
    self.navigationItem.title = @"个人详情";
    //tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    //self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self createTop];
    [self createCenter];
}
- (void)createTop{
    views = [UIView new];
    self.tableView.tableHeaderView = views;
    views.sd_layout.topSpaceToView(self.tableView,64).leftSpaceToView(self.tableView,0).rightSpaceToView(self.tableView,0).heightIs(SCREEN_H);
    UIImageView *imgView = [UIImageView new];
    imgView.image = [UIImage imageNamed:@"123.jpg"];
    imgView.backgroundColor=[UIColor redColor];
    [views addSubview:imgView];
    imgView.sd_layout.topSpaceToView(views,0).leftSpaceToView(views,0).rightSpaceToView(views,0).heightIs(150);
    
    UILabel *proLab = [UILabel new];
    [views addSubview:proLab];
    proLab.sd_layout.topSpaceToView(imgView,5).leftSpaceToView(views,0).rightSpaceToView(views,0).heightIs(30);
    proLab.text = @"   个人简介";
    proLab.backgroundColor = FASTCOLOR;
    
    introLab = [UILabel new];
    [views addSubview:introLab];
    introLab.sd_layout.topSpaceToView(proLab,0).leftSpaceToView(views,0).rightSpaceToView(views,0);
    introLab.text = @"护甲减肥可能吧看来是你放开你考虑非你不来南方那边分别能不能比他你哦人偶波日提偶yhmyumumkkgioihoteihjpirehnbiehtrperihepithoetihipetjhieorhjoithothoithjitphoit护甲减肥可能吧看来是你放开你考虑非你不来南方那边分别能不能比他你哦人偶波日提偶yhmyumumkkgioihoteihjpirehnbiehtrperihepithoetihipetjhieorhjoithothoithjitphoit护甲减肥可能吧看来是你放开你考虑非你不来南方那边分别能不能比他你哦人偶波日提偶yhmyumumkkgioihoteihjpirehnbiehtrperihepithoetihipetjhieorhjoithothoithjitphoit护甲减肥可能吧看来是你放开你考虑非你不来南方那边分别能不能比他你哦人偶波日提偶yhmyumumkkgioihoteihjpirehnbiehtrperihepithoetihipetjhieorhjoithothoithjitphoit";
    introLab.numberOfLines = 0;
    introLab.font = [UIFont systemFontOfSize:14];
    
    introLab.backgroundColor =FASTCOLOR;
    
    
}
- (void)createCenter{
    UIView *viewxian = [UIView new];
    [self.tableView addSubview:viewxian];
    viewxian.sd_layout.topSpaceToView(introLab,0).leftSpaceToView(self.tableView,0).rightSpaceToView(self.tableView,0).heightIs(80);
    viewxian.backgroundColor =FASTCOLOR;
    UILabel *lab = [UILabel new];
    [viewxian addSubview:lab];
    viewxian.sd_layout.topSpaceToView(viewxian,10).leftSpaceToView(viewxian,0).rightSpaceToView(viewxian,0).heightIs(1);
    viewxian.backgroundColor = SEGMENTCOLOR;
    for (int i =1; i<=3; i++) {
        UILabel *lab = [UILabel new];
        [self.view addSubview:lab];
        lab.sd_layout.topSpaceToView(introLab, i*30).leftSpaceToView(self.view,15).rightSpaceToView(self.view,0).heightIs(1);
        ////////横线的背景颜色
        lab.backgroundColor =SEGMENTCOLOR;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
