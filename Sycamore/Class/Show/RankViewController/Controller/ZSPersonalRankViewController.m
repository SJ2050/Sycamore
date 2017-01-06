//
//  ZSPersonalRankViewController.m
//  Sycamore
//
//  Created by teacher on 16-12-26.
//  Copyright (c) 2016年 teacher. All rights reserved.
//

#import "ZSPersonalRankViewController.h"
#import "ZSCollectionViewController.h"


@interface ZSPersonalRankViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    UITextField *seekField;
    UIView *seekView;
    UICollectionView *_collectionViews;
    
}

@end

@implementation ZSPersonalRankViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BGCOLOR;
    self.navigationItem.title = @"浏览";
    [self seek];
    [self createCollection];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 150, 60, 30)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
}
- (void)clickBtn{
    ZSCollectionViewController *collection = [[ZSCollectionViewController alloc] init];
    [self.navigationController pushViewController:collection animated:YES];
}
- (void)seek{
    seekView = [UIView new];
    [self.view addSubview:seekView];
    seekView.sd_layout.topSpaceToView(self.view,64).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(40);
    seekView.backgroundColor = CUSTOMCOLOR(191,191,191);
    
    seekField = [UITextField new];
    [seekView addSubview:seekField];
    seekField.sd_layout.topSpaceToView(seekView,5).leftSpaceToView(seekView,8).rightSpaceToView(seekView,8).bottomSpaceToView(seekView,5);
    seekField.backgroundColor = [UIColor whiteColor];
    seekField.layer.cornerRadius = 5;
    seekField.layer.masksToBounds = YES;
    ////////////左视图    用户文本框的图标
    UIImageView *seekImg = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 15, 15)];;
    seekField.leftView = seekImg;
    seekImg.image = [UIImage imageNamed:@"sousuo.png"];
    //图片显示样式
    seekField.leftViewMode = UITextFieldViewModeAlways;
    seekField.contentVerticalAlignment= UIControlContentVerticalAlignmentCenter;
    seekField.font = [UIFont systemFontOfSize:12];

    seekField.placeholder = @"搜索";
}
- (void)createCollection{
    UIView *downView = [UIView new];
    [self.view addSubview:downView];
    downView.sd_layout.bottomSpaceToView(self.view,49).leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).heightIs(100);
    downView.backgroundColor = [UIColor yellowColor];
    UILabel *lab = [UILabel new];
    [downView addSubview:lab];
    lab.sd_layout.topSpaceToView(downView,30).leftSpaceToView(downView,0).rightSpaceToView(downView,0).heightIs(1);
    lab.backgroundColor = SEGMENTCOLOR;
    
    UILabel *person = [UILabel new];
    [downView addSubview:person];
    person.sd_layout.topSpaceToView(downView,0).leftSpaceToView(downView,10).heightIs(30).widthIs(80);
    person.text = @"推荐人才";
    person.font = [UIFont systemFontOfSize:14];
    
    ZSCollectionViewController *collecton = [[ZSCollectionViewController alloc] init];
    
    [downView addSubview:collecton.view];
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
