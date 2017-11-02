//
//  YQViewController.m
//  YQAlertView
//
//  Created by yyqxiaoyin on 11/01/2017.
//  Copyright (c) 2017 yyqxiaoyin. All rights reserved.
//

#import "YQViewController.h"
#import "YQAlertView.h"

#define UIColorFromHex(s) [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s &0xFF00) >>8))/255.0 blue:((s &0xFF))/255.0 alpha:1.0]

@interface YQViewController ()

@property (nonatomic ,strong) UITableView *tableView;

@end

@implementation YQViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self second];
}

- (void)second{
    
    YQAlertView *alert = [YQAlertView alertViewWithTitle:@"未开启定位服务" message:@"请进入系统设置中开启定位服务:设置->隐私->定位服务->中影电影->开启定位服务"];
    YQAlertAction *sure = [YQAlertAction actionWithTitle:@"立即开启" titleColor:UIColorFromHex(0xdc4ad2) handler:^(YQAlertAction *action) {
        
    }];
    
    YQAlertAction *cancel = [YQAlertAction actionWithTitle:@"取消" handler:^(YQAlertAction *action) {
        
    }];
    [alert addAction:cancel];
    [alert addAction:sure];
    [alert show];
    
}

- (void)first{
    YQAlertView *alert = [YQAlertView alertViewWithTitle:@"" message:@"确定退出登录么？"];
    
    YQAlertAction *sure = [YQAlertAction actionWithTitle:@"确定" handler:^(YQAlertAction *action) {
    }];
    
    YQAlertAction *cancel = [YQAlertAction actionWithTitle:@"取消" titleColor:UIColorFromHex(0xdc4ad2) handler:nil];
    [alert addAction:sure];
    [alert addAction:cancel];
    [alert show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	
}
@end
