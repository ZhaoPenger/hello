//
//  Header.h
//  JiFenCai
//
//  Created by fuyang on 15/1/19.
//  Copyright (c) 2015年 zp. All rights reserved.
//

#ifndef JiFenCai_Header_h
#define JiFenCai_Header_h

#define IOS7_OR_LATER (([[[UIDevice currentDevice] systemVersion] floatValue] >=7.0) ? YES:NO)

// 按照百分比，获取坐标
#define gotX(x) ((x/320.0f) * [[UIScreen mainScreen] bounds].size.width)
#define gotY(y) ((y/568.0f) * [[UIScreen mainScreen] bounds].size.height)
//#define gotY(y) (y/2.0f)
#define gotWidth(w) (((w)/320.0f) * [[UIScreen mainScreen] bounds].size.width)
#define gotHeight(h) (((h)/568.0f)*  [[UIScreen mainScreen] bounds].size.height)

#define FENSE_COLOR [UIColor colorWithRed:255/255.0 green:86/255.0 blue:91/255.0 alpha:1.0]
#define BACKBROUND_COLOR [UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1.0] //#f3f3f3
#define LINE_COLOR [UIColor colorWithRed:225/255.0 green:225/255.0 blue:225/255.0 alpha:1.0] //#e1e1e1
#define SHENHUISE_COLOR [UIColor colorWithRed:76/255.0 green:76/255.0 blue:76/255.0 alpha:1.0] //#4c4c4c
#endif
