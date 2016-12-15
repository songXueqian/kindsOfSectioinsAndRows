//
//  MyCollectionViewCell.m
//  ocCrazy
//
//  Created by 宋学谦 on 2016/12/1.
//  Copyright © 2016年 dukai. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.myLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.myLabel];
        
        self.myImage = [[UIImageView alloc] init];
        self.myImage.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:self.myImage];
        
        
    }
    return self;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    self.myImage.frame = CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height - 20);

    self.myLabel.frame = CGRectMake(0, self.contentView.bounds.size.height - 20, self.contentView.bounds.size.width, 20);

}
@end
