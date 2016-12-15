//
//  ViewController.h
//  kindsOfSectioinsAndRows
//
//  Created by 宋学谦 on 2016/12/2.
//  Copyright © 2016年 SongXueqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)NSMutableArray *dataArray;


@end

