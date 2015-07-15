//
//  EarnMoneyTableViewCell.h
//  demos
//
//  Created by 赵鹏 on 15-5-26.
//  Copyright (c) 2015年 zhaopeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EarnMoneyView.h"
@interface EarnMoneyTableViewCell : UITableViewCell<earnMoneyViewDelegate>

@property(nonatomic,strong)EarnMoneyView *earnMoneyView;
@property(nonatomic,strong)UIView *bgView;
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier percent:(CGFloat)percent;
@end
