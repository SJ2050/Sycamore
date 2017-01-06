//
//  ZSHomePageViewController.m
//  Sycamore
//
//  Created by teacher on 16-12-26.
//  Copyright (c) 2016年 teacher. All rights reserved.
//

#import "ZSHomePageViewController.h"
#import "ZSLoginViewController.h"
#import "ZSHomePageTableViewCell.h"

@interface ZSHomePageViewController ()
{
    UIView *views;
    UIScrollView *myScroll;
    NSMutableArray *arrayImage;
    NSTimer *timers;
    UIPageControl *pageCtl;
    NSMutableArray *listArray;
    UILabel *labs;
}
@end

@implementation ZSHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = BGCOLOR;
    //注册单元格
    [self.tableView registerNib:[UINib nibWithNibName:@"ZSHomePageTableViewCell" bundle:nil] forCellReuseIdentifier:@"ZSHomePageTableViewCell"];
    self.navigationItem.title = @"首页";
    [self xxx];
    [self createHeaderView];
    [self createScrollView];
    [self initImage];
}
- (void)createHeaderView{
    views = [UIView new];
    self.tableView.tableHeaderView = views;
    views.sd_layout.topSpaceToView(self.tableView,64).leftSpaceToView(self.tableView,0).rightSpaceToView(self.tableView,0).heightIs(151.5);
    
    listArray = [NSMutableArray arrayWithCapacity:0];
    NSDictionary *dic1 = @{@"list":@"婚礼精选"};
    NSDictionary *dic2 = @{@"list":@"婚礼热门"};
    [listArray addObject:dic1];
    [listArray addObject:dic2];
}
- (void)initImage{
    arrayImage = [NSMutableArray arrayWithCapacity:0];
    UIImageView *img1 = [[UIImageView alloc] initWithFrame:CGRectMake(0*SCREEN_WIDTH, 0, SCREEN_WIDTH, 151.5)];
    img1.image = [UIImage imageNamed:@"s5.jpg"];
    [myScroll addSubview:img1];
    for (int i = 0; i<5; i++) {
        UIImage *images = [UIImage imageNamed:[NSString stringWithFormat:@"s%d.jpg",i+1]];
        [arrayImage addObject:images];
        // NSLog(@"%@",arrayImage);
        UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(i*SCREEN_WIDTH+SCREEN_WIDTH, 0, SCREEN_WIDTH, 151.5)];
        img.image = arrayImage[i];
        
        [myScroll addSubview:img];
    }
    UIImageView *img2 = [[UIImageView alloc] initWithFrame:CGRectMake(arrayImage.count*SCREEN_WIDTH+SCREEN_WIDTH, 0, SCREEN_WIDTH, 151.5)];
    img2.image = [UIImage imageNamed:@"s1.jpg"];
    [myScroll addSubview:img2];
    
    timers = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(gun) userInfo:nil repeats:YES];
    
    pageCtl = [[UIPageControl alloc] initWithFrame:CGRectMake(100, 130, 120, 30)];
    pageCtl.numberOfPages = arrayImage.count;
    //    未选中
    pageCtl.pageIndicatorTintColor = [UIColor grayColor];
    //选中
    pageCtl.currentPageIndicatorTintColor = MAINCOLOR;
    pageCtl.currentPage = 0;
    [pageCtl addTarget:self action:@selector(changeContent) forControlEvents:UIControlEventValueChanged];
    
    [views addSubview:pageCtl];
}

- (void)gun{
    int index = myScroll.contentOffset.x/SCREEN_WIDTH;
    
    [UIView animateWithDuration:0.5 animations:^{
        
        myScroll.contentOffset = CGPointMake((index+1)*SCREEN_WIDTH, 0);
        
    } completion:^(BOOL finished) {
        //动画执行完成后执行的代码
        if(index==arrayImage.count)
        {
            myScroll.contentOffset = CGPointMake(1*SCREEN_WIDTH, 0);
            
        }
        int index1 = myScroll.contentOffset.x/SCREEN_WIDTH;
        pageCtl.currentPage = index1-1;
    }];
}

- (void)changeContent{
    
    [UIView animateWithDuration:0.5 animations:^{
        myScroll.contentOffset = CGPointMake((pageCtl.currentPage+1)*SCREEN_WIDTH, 0) ;
    }];
}
- (void)createScrollView{
    myScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 151.5)];
  
    
    myScroll.delegate = self;
    myScroll.contentSize = CGSizeMake(7*SCREEN_WIDTH, 151.5);
    //设置整页滚动
    myScroll.pagingEnabled = YES;
    //是否允许回弹
    myScroll.bounces = NO;
    //是否显示滚动条 横向
    myScroll.showsHorizontalScrollIndicator = NO;
    //纵向
    myScroll.showsVerticalScrollIndicator = NO;
    //设置内容的偏移量
    myScroll.contentOffset = CGPointMake(SCREEN_WIDTH, 0);
    myScroll.tag = 11;
    [views addSubview:myScroll];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    if (scrollView.tag ==11) {
        int index = scrollView.contentOffset.x/SCREEN_WIDTH;
        if(index==0)
        {
            scrollView.contentOffset = CGPointMake(arrayImage.count*SCREEN_WIDTH, 0);
        }
        else if(index==arrayImage.count+1)
        {
            scrollView.contentOffset = CGPointMake(SCREEN_WIDTH, 0);
        }
        int index1 = scrollView.contentOffset.x/SCREEN_WIDTH;
        
        pageCtl.currentPage = index1-1;
    }
    
}
///////分组
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor whiteColor];
    UIImageView *imgViews = [[UIImageView alloc] initWithFrame:CGRectMake(9.5, 9, 4, 14.5)];
    imgViews.image = [UIImage imageNamed:@"2.png"];
    [headerView addSubview:imgViews];
    labs = [[UILabel alloc] initWithFrame:CGRectMake(16.5, 9, 80, 12.5)];
    labs.text = listArray[section][@"list"];
    labs.font = [UIFont systemFontOfSize:13];
    labs.textColor = [UIColor blackColor];
    [headerView addSubview:labs];
    return headerView;
}
///分组名称
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return listArray[section][@"list"]    ;
}

- (void)xxx{
    /*
     设置图标
     */
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
    [btn setBackgroundImage:[UIImage imageNamed:@"tianjia.png"] forState:UIControlStateNormal];
    //添加事件
    [btn addTarget:self action:@selector(pushBtn) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithCustomView:btn];
    //视图的顶点 坐标被重写  大小可以改变
    self.navigationItem.rightBarButtonItem = rightBtn;
}
- (void)pushBtn{
    //模态跳转
    ZSLoginViewController *loginCtl = [[ZSLoginViewController alloc] init];
    [self presentViewController:loginCtl animated:YES completion:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return listArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZSHomePageTableViewCell" forIndexPath:indexPath];
   
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 111.5;
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
