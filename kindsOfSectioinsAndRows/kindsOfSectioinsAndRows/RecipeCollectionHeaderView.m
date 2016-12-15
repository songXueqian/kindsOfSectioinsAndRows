//
//  RecipeCollectionHeaderView.m
//  ocCrazy
//
//  Created by 宋学谦 on 2016/12/1.
//  Copyright © 2016年 dukai. All rights reserved.
//

#import "RecipeCollectionHeaderView.h"

@implementation RecipeCollectionHeaderView



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
