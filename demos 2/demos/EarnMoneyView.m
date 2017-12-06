//
//  EarnMoneyView.m
//  demos
//
//  Created by fuyang on 15/5/26.
//  Copyright (c) 2015年 zhaopeng. All rights reserved.
//

#import "EarnMoneyView.h"

@interface EarnMoneyView ()
{
    CGFloat _percent;
    CGRect _frame;
    int i;
}
@property(nonatomic,strong)UIImageView *imageView;
@property(nonatomic,strong)UILabel *percentLabel;
@property(nonatomic,strong)NSTimer *timer;
@end


@implementation EarnMoneyView

-(instancetype)initWithFrame:(CGRect)frame percent:(CGFloat)percent
{
    self=[super initWithFrame:frame];
    if (self) {
        _percent=percent;
        _frame=frame;
        i=0;
        [self createContent:frame];
    }
    return self;
}


-(void)createContent:(CGRect)frame
{
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [button setTitle:@"开始赚钱" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    button.layer.borderColor=[UIColor redColor].CGColor;
    button.layer.cornerRadius=5;
    button.layer.borderWidth=1;
    [button addTarget:self action:@selector(buttonClciked) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    
    self.imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 0, frame.size.height)];
    self.imageView.backgroundColor=[UIColor redColor];
    self.imageView.layer.borderColor=[UIColor redColor].CGColor;
    self.imageView.layer.cornerRadius=5;
    self.imageView.layer.borderWidth=1;
    [button addSubview:self.imageView];
    
    self.percentLabel=[[UILabel alloc]initWithFrame:CGRectMake(frame.size.width-70, 0, 60, frame.size.height)];
    self.percentLabel.text=[NSString stringWithFormat:@"已售\n0％"];
    self.percentLabel.font=[UIFont systemFontOfSize:15];
    self.percentLabel.numberOfLines=0;
    self.percentLabel.textAlignment=NSTextAlignmentRight;
    [button addSubview:self.percentLabel];
    
    self.timer=[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(timerFire) userInfo:nil repeats:YES];
    [self.timer fire];
}



-(void)timerFire
{
    if (i<=_percent/100*_frame.size.width) {
        [UIView animateWithDuration:0.6 animations:^{
            NSInteger percent=0;
    
            if (i*100/_frame.size.width-i*100/(int)_frame.size.width>0) {
                percent=(int)i*100/(int)_frame.size.width+1;
            }else
            {
                percent=i*100/_frame.size.width;
            }
            self.percentLabel.text=[NSString stringWithFormat:@"已售\n%ld％",(long)percent];
            self.imageView.frame=CGRectMake(0, 0, i, _frame.size.height);
        }];
    }
    if (i== _frame.size.width) {
        [self.timer setFireDate:[NSDate distantFuture]];
    }
    i++;
}


-(void)refreshFanFavouriteFBV:(CGFloat)percent
{
    _percent=percent;
    self.imageView.frame=CGRectMake(0, 0, 0, _frame.size.height);
    
    [self.timer setFireDate:[NSDate distantPast]];
    i=0;
}


-(void)buttonClciked
{
    [self.delegate earnMoneyViewButtonClicked];
}


@end
