//
//  RecipeCollectionFooterView.m
//  kindsOfSectioinsAndRows
//
//  Created by 宋学谦 on 2016/12/2.
//  Copyright © 2016年 SongXueqian. All rights reserved.
//

#import "RecipeCollectionFooterView.h"

@implementation RecipeCollectionFooterView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.whiteView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, 80)];
        self.whiteView.backgroundColor = [UIColor cyanColor];
        [self addSubview:self.whiteView];
        
        
        
    }
    return self;
}


@end
