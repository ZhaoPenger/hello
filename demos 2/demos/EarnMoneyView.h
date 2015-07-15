//
//  EarnMoneyView.h
//  demos
//
//  Created by fuyang on 15/5/26.
//  Copyright (c) 2015年 zhaopeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol earnMoneyViewDelegate <NSObject>

-(void)earnMoneyViewButtonClicked;

@end


@interface EarnMoneyView : UIView


-(instancetype)initWithFrame:(CGRect)frame percent:(CGFloat)percent;
-(void)refreshFanFavouriteFBV:(CGFloat)percent;

@property(nonatomic,assign)id<earnMoneyViewDelegate>delegate;
@end
