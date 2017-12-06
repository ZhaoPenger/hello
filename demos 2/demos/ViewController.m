//
//  ViewController.m
//  demos
//
//  Created by fuyang on 15/5/26.
//  Copyright (c) 2015年 zhaopeng. All rights reserved.
//

#import "ViewController.h"
#import "EarnMoneyView.h"
#import "EarnMoneyTableViewCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    EarnMoneyView *earnMoneyView;
    
    UITableView *_tableView;
    
    NSMutableArray *dataArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataArray=[[NSMutableArray alloc]initWithObjects:@"12" ,nil];
   [self createfanFavouriteFBV];
    [self createEarnView];
    // Do any additional setup after loading the view, typically from a nib.
}

//球迷最爱立即购买
-(void)createfanFavouriteFBV
{
    
//    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
//    _tableView.delegate=self;
//    _tableView.dataSource=self;
//    [self.view addSubview:_tableView];
//    
//    
//    
// UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
//    button.frame=CGRectMake(10, 300, 20, 20);
//    [button setTitle:@"title" forState:UIControlStateNormal];
//    button.backgroundColor=[UIColor orangeColor];
//    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
  
    
//    earnMoneyView=[[EarnMoneyView alloc]initWithFrame:CGRectMake(10, button.frame.size.height+button.frame.origin.y+10, self.view.frame.size.width-20, 50) percent:8];
//    earnMoneyView.delegate=self;
//    [self.view addSubview:earnMoneyView];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName=@"cellName";
   EarnMoneyTableViewCell*  cell=(EarnMoneyTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell==nil) {
        cell=[[EarnMoneyTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName percent:[[dataArray objectAtIndex:indexPath.row] floatValue]];
    }else
    {
        [cell.earnMoneyView refreshFanFavouriteFBV:[[dataArray objectAtIndex:indexPath.row] floatValue]];
    }
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataArray.count;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(void)buttonClicked:(UIButton *)button
{
  // [dataArray removeAllObjects];
    
    [dataArray addObject:@"77"];
    [_tableView reloadData];
}



-(void)createEarnView
{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(12, 300, 200, 30)];;
    label.font=[UIFont boldSystemFontOfSize:20];
    label.font= [UIFont fontWithName:@"Arial-BoldItalicMT" size:24];
    
    label.text=@"dsfdsfsdfsddsf";
    [self.view addSubview:label];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
