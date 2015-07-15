//
//  EarnMoneyTableViewCell.m
//  demos
//
//  Created by 赵鹏 on 15-5-26.
//  Copyright (c) 2015年 zhaopeng. All rights reserved.
//

#import "EarnMoneyTableViewCell.h"

@implementation EarnMoneyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier percent:(CGFloat)percent
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createBgView];
        [self createContent:percent];
    }
    return self;
}


-(void)createBgView
{
  
    
    self.bgView=[[UIView alloc]initWithFrame:CGRectMake(0, 20, self.frame.size.width, 50)];
    self.bgView.backgroundColor=[UIColor greenColor];
    [self addSubview:self.bgView];
}

-(void)earnMoneyViewButtonClicked
{
    NSLog(@"开始赚钱");
}

-(void)createContent:(CGFloat)percent
{
    
    self.earnMoneyView=[[EarnMoneyView alloc]initWithFrame:CGRectMake(10,0, self.frame.size.width-20, 50) percent:percent];
    self.earnMoneyView.delegate=self;
    [self.bgView addSubview:self.earnMoneyView];
}


@end
