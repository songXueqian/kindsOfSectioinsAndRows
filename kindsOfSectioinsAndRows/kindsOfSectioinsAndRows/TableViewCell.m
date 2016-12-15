//
//  TableViewCell.m
//  UITableView
//
//  Created by 宋学谦 on 2016/12/2.
//  Copyright © 2016年 SongXueqian. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        
        self.myLabel = [[UILabel alloc] init];
        [self addSubview:self.myLabel];
        
        
        
        
    }
    return self;

}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.myLabel setFrame:CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height)];

}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
