//
//  QWTabBarController.m
//  Sycamore
//  微微卿 制作
//  Created by teacher on 16-12-26.
//    Copyright (c) 2016年 teacher. All rights reserved.
//
//  Copyright (c) 2016年 teacher. All rights reserved.
//

#import "QWTabBarController.h"
#import "QWNavitionController.h"
@interface QWTabBarController ()

@end

@implementation QWTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewControllers];
}
- (void)addChildViewControllers
{
#warning  添加 被TabBarCtl 控制的视图控制器 名称
    //视图控制器名称
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"ZSHomePageViewController",@"ZSRecruitTableViewController",@"ZSPersonalRankViewController",@"ZSPersonalCenterViewController"]];
#warning Set TabBarItem Nomal Icon Name
    NSArray *imgArray = @[@"zhuye1",@"zhaopin1",@"liulan1",@"geren1"];
#warning Set TabBarItem selected Icon Name
    NSArray *selectImageArray = @[@"zhuye",@"zhaopin",@"liulan",@"geren"];
#warning Set TabBarItem title
    NSArray *titles = @[@"首页",@"招聘",@"浏览",@"个人"];
    for(int i =0;i<array.count;i++)
    {
        UIViewController *vc = [[NSClassFromString(array[i]) alloc] init];
        QWNavitionController *nav = [[QWNavitionController alloc] initWithRootViewController:vc];
        vc.title = titles[i];
        nav.tabBarItem.title = titles[i];
        nav.tabBarItem.image = IMG(imgArray[i]);
        nav.tabBarItem.selectedImage = [IMG(selectImageArray[i]) imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [array replaceObjectAtIndex:i withObject:nav];
    }
    self.viewControllers = array;
    self.tabBar.tintColor = MAINCOLOR;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
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
