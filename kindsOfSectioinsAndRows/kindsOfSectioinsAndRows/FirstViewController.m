//
//  FirstViewController.m
//  kindsOfSectioinsAndRows
//
//  Created by 宋学谦 on 2016/12/2.
//  Copyright © 2016年 SongXueqian. All rights reserved.
//

#import "FirstViewController.h"
#import "MyCollectionViewCell.h"
#import "RecipeCollectionHeaderView.h"
#import "RecipeCollectionFooterView.h"

#define screenWeith self.view.frame.size.width
#define screenHeight self.view.frame.size.height


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self creatUI];

    self.dataArray = [NSMutableArray arrayWithObjects:@"13", @"123", @"890", @"67", @"785", @"567", @"378785", @"10014", @"003", @"121113", nil];
    
}


- (void)creatUI{
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    //layout的使用
    //1.设置每个cell的大小
    flowLayout.itemSize = CGSizeMake((screenWeith - 30) / 2, (screenWeith - 30) / 2 + 30);
    //2.设置collectionView的滚动方向
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    //3.设置间隔大小
    // 左右
    flowLayout.minimumInteritemSpacing = 0;
    // 上下
    flowLayout.minimumLineSpacing = 10;
    
    flowLayout.sectionInset = UIEdgeInsetsMake(10, 10, 20, 10);
    
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, screenWeith, screenHeight) collectionViewLayout:flowLayout];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    [self.view addSubview:self.collectionView];
    
    // 必须要提前注册一个cell类  给collectionView
    [self.collectionView registerClass:[MyCollectionViewCell class] forCellWithReuseIdentifier:@"张三"];
    
    [self.collectionView registerClass:[RecipeCollectionHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
    
    [self.collectionView registerClass:[RecipeCollectionFooterView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView"];

    
    
    
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
 
    if (0 == section) {
        return 5;
    } else {
        return 10;

    }
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"张三" forIndexPath:indexPath];
    
    cell.myLabel.text = [self.dataArray objectAtIndex:indexPath.row];
    
    cell.backgroundColor = [UIColor cyanColor];
    return cell;
    
}

//这个方法必写，给headerView高度，让它显示出来
//设置顶部的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    
    CGSize size = {self.view.frame.size.width, 80};
    
    return size;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section{
    
    CGSize size = {self.view.frame.size.width, 80};
    
    return size;
}


- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview =nil;
    
    if (kind == UICollectionElementKindSectionHeader){
        RecipeCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        reusableview = headerView;
    }
    
    if (kind == UICollectionElementKindSectionFooter){
        RecipeCollectionFooterView *footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
        reusableview = footerView;
    }
    
    
    
    
    return reusableview;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
