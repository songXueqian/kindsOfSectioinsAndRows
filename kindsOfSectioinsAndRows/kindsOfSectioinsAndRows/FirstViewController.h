//
//  FirstViewController.h
//  kindsOfSectioinsAndRows
//
//  Created by 宋学谦 on 2016/12/2.
//  Copyright © 2016年 SongXueqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong)UICollectionView *collectionView;
@property (nonatomic, strong)NSMutableArray *dataArray;

@end
