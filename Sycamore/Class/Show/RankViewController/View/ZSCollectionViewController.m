//
//  ZSCollectionViewController.m
//  Sycamore
//
//  Created by mac on 17/1/5.
//  Copyright © 2017年 teacher. All rights reserved.
//

#import "ZSCollectionViewController.h"

@interface ZSCollectionViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
  UICollectionView *_collectionViews;
}

@end

@implementation ZSCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)createCollection{
    //确定是水平滚动，还是垂直滚动
    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    _collectionViews=[[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) collectionViewLayout:flowLayout];
    _collectionViews.dataSource=self;
    _collectionViews.delegate=self;
    [ _collectionViews setBackgroundColor:[UIColor clearColor]];
    
//    [ _collectionViews registerNib:[UINib nibWithNibName:@"SJAllCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    [_collectionViews registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview: _collectionViews];
}
//定义每个Item 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //屏幕大小
    CGRect rx = [UIScreen mainScreen ].bounds;
    
    return CGSizeMake((rx.size.width-10)/2-5,50);
}


#pragma mark UICollectionViewDataSource, UICollectionViewDelegate


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
//    cell.mModel = self.dataList[indexPath.row];
//    
//    cell.layer.borderWidth = 0.7;
//    cell.layer.borderColor = ORGCOLOR.CGColor;
    cell.backgroundColor = [UIColor redColor];
    return cell;
    
}

//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"点击了第%ld个item" , (long)indexPath.row);
    //每个跳转
//    SJDetailViewController *detailCtl = [[SJDetailViewController alloc] init];
//    SJAllCollectionViewCell *allCtl = (SJAllCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
//    detailCtl.nameId = allCtl.mModel.id;
//    [self.navigationController pushViewController:detailCtl animated:YES];
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
