//
//  YQViewController.m
//  YQAlertView
//
//  Created by yyqxiaoyin on 11/01/2017.
//  Copyright (c) 2017 yyqxiaoyin. All rights reserved.
//

#import "YQViewController.h"
#import "YQAlertView.h"
#import "UIColor+YYQExtension.h"

#define UIColorFromHex(s) [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s &0xFF00) >>8))/255.0 blue:((s &0xFF))/255.0 alpha:1.0]
#define THEME_COLOR [UIColor colorWithHexColorString:@"bb67bf"] /**< 浅紫色 */
#define C1Color [UIColor colorWithHexColorString:@"ffffff"] /**< 白色 */
#define C2Color [UIColor colorWithHexColorString:@"e1e1e1"] /**< 浅灰色*/
#define C3Color [UIColor colorWithHexColorString:@"999999"] /**< 中灰色*/
#define C4Color [UIColor colorWithHexColorString:@"666666"] /**< 深灰色*/
#define C5Color [UIColor colorWithHexColorString:@"282828"] /**< 大黑色*/
#define C6Color [UIColor colorWithHexColorString:@"7d7486"] /**< 墨绿色*/
#define C7Color [UIColor colorWithHexColorString:@"bb67bf"] /**< 浅紫色*/
#define C8Color [UIColor colorWithHexColorString:@"dc4ad2"] /**< 紫色*/
#define C9Color [UIColor colorWithHexColorString:@"fe4193"] /**< 粉红色*/
#define C10Color [UIColor colorWithHexColorString:@"f0f0f0"] /**< tableView背景灰色*/
#define C11Color  [UIColor colorWithHexColorString:@"c9c9c9"] /**< 中浅灰色*/
#define C12Color  [UIColor colorWithHexColorString:@"999999"] /**< 中灰色*/
#define C13Color  [UIColor colorWithHexColorString:@"c1c1c1"] /**< 高浅灰色*/
#define C14Color [UIColor colorWithHexColorString:@"f78022"] /**< 橙色*/
#define C15Color [UIColor colorWithHexColorString:@"dc4ad2"] /**< 紫色*/
#define C16Color [UIColor colorWithHexColorString:@"a85cac"] /**< 石灰紫色*/

@interface YQViewController ()

@property (nonatomic ,strong) UITableView *tableView;

/** <#describtion#> */
@property (nonatomic ,strong) YQAlertAction *action;

@end

@implementation YQViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self seven];
    
}

- (void)nine{
//    YQAlertView *alert = [YQAlertView alertViewWithTitle:@"请输入中影通卡密码" message:@""];
//    YQAlertAction *actionText = [YQAlertAction actionWithTitle:@"" handler:nil];
//    actionText.textField.secureTextEntry = YES;
//    actionText.textField.keyboardType =  UIKeyboardTypeEmailAddress;
//    actionText.textField.fk = YES;
//    YQAlertAction *actionCancel = [YQAlertAction actionWithTitle:@"取消"  handler:^(YQAlertAction *action) {
//        
//    }];
//    YQAlertAction *actionEnsure = [YQAlertAction actionWithTitle:@"确定" handler:^(YQAlertAction *action) {
////        [self payRequest:actionText.textField.text];
//    }];
//    
//    [alert addAction:actionText];
//    [alert addAction:actionCancel];
//    [alert addAction:actionEnsure];
//    [alert show];
}

- (void)eight{
    NSString *tip = @"";
    if (1) {
        tip = @"你已使用电子券部分支付，确定取消?";
    }else{
        
        tip = @"返回会取消当前订单，您确定返回吗?";
    }
    
    YQAlertView *aler = [YQAlertView alertViewWithTitle:@"提示" message:tip];
    
    YQAlertAction *cancel = [YQAlertAction actionWithTitle:@"取消" handler:^(YQAlertAction *action) {
    }];
    
    YQAlertAction *ensure = [YQAlertAction actionWithTitle:@"确定" handler:^(YQAlertAction *action) {
        
        
    }];
    
    [aler addAction:cancel];
    [aler addAction:ensure];
    
    
    [aler  show];
}

- (void)seven{
    YQAlertView *alert = [YQAlertView alertViewWithTitle:@"提示" message:@"123"];
    YQAlertAction *en = [YQAlertAction actionWithTitle:@"确定" handler:^(YQAlertAction *action) {
        
    }];
    en.titleColor = [UIColor redColor];
    self.action = en;
    [alert addAction:en];
    [alert show];
    
    NSAttributedString *title = [[NSAttributedString alloc]initWithString:@"客服热线" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:C5Color}];
    NSAttributedString *message = [[NSAttributedString alloc]initWithString:@"400-998-8022" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:C8Color}];
    
    alert.attributedMessage = message;
    
    alert.attributedTitle = title;
    
}

- (void)six{
    YQAlertView *aler = [YQAlertView alertViewWithTitle:@"温馨提示" message:@"退款7~15个工作日到账，您确认对该订单进行退款吗？"];
    YQAlertAction *cancel = [YQAlertAction actionWithTitle:@"取消" titleColor:C8Color handler:^(YQAlertAction *action) {
        
    }];
    
    
    YQAlertAction *sure = [YQAlertAction actionWithTitle:@"确定"handler:^(YQAlertAction *action) {
        
        
    }];
    
    
    [aler addAction:cancel];
    [aler addAction:sure];
    [aler show];
}

- (void)five{
    NSString *city = [NSString stringWithFormat:@"定位到您当前的城市是%@，是否切换城市？",@"深圳"];
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc]initWithString:city];
    NSRange range = [city rangeOfString:@"深圳"];
    [attString addAttribute:NSForegroundColorAttributeName value:C5Color range:NSMakeRange(0, attString.length)];
    [attString addAttribute:NSForegroundColorAttributeName value:C8Color range:range];
//    [attString setYy_color:C5Color];
//    [attString yy_setColor:C8Color range:range];
    
    YQAlertView *alert = [YQAlertView alertViewWithAttributedTitle:nil attributedmessage:attString];
    YQAlertAction *actionCancel = [YQAlertAction actionWithTitle:@"取消" titleColor:C4Color handler:^(YQAlertAction *action) {
        
    }];
    YQAlertAction *actionEnsure = [YQAlertAction actionWithTitle:@"切换" titleColor:C8Color handler:^(YQAlertAction *action) {
        
    }];
    [alert addAction:actionCancel];
    [alert addAction:actionEnsure];
    [alert show];
}

- (void)fourth{
    
    
    NSAttributedString *title = [[NSAttributedString alloc]initWithString:@"客服热线" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:C5Color}];
    NSAttributedString *message = [[NSAttributedString alloc]initWithString:@"400-998-8022" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:C8Color}];
    YQAlertView *alert = [YQAlertView alertViewWithAttributedTitle:title attributedmessage:message];
    YQAlertAction *cancel = [YQAlertAction actionWithTitle:@"取消" titleColor:C8Color handler:^(YQAlertAction *action) {
        
    }];;
    YQAlertAction *sure = [YQAlertAction actionWithTitle:@"呼叫" titleColor:C8Color handler:^(YQAlertAction *action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://400-998-8022"]];
    }];
    [alert addAction:cancel];
    [alert addAction:sure];
    [alert show];
}

- (void)third{
    YQAlertView *alertView = [YQAlertView alertViewWithTitle:@"查询余额" message:@""];
    
    UITextField *textField = [[UITextField alloc]init];
    textField.backgroundColor = [UIColor whiteColor];
    textField.layer.borderColor = UIColorFromHex(0xe1e1e1).CGColor;
    textField.layer.borderWidth = 1.0/[UIScreen mainScreen].scale;
    UILabel *leftView = [[UILabel alloc]init];
    leftView.backgroundColor = [UIColor whiteColor];
    leftView.text = self.title;
    leftView.font = [UIFont systemFontOfSize:14];
    leftView.textAlignment = NSTextAlignmentCenter;
    leftView.backgroundColor = [UIColor whiteColor];
    [leftView sizeToFit];
    leftView.bounds = CGRectMake(0, 0, leftView.frame.size.width + 10, leftView.frame.size.height +1);
    textField.leftView = leftView;
    textField.leftViewMode = UITextFieldViewModeAlways;
    textField.tag = 100;
    textField.placeholder = @"输入单店会员卡密码";
    textField.secureTextEntry = YES;
    
    YQAlertAction *action = [YQAlertAction actionWithTextField:textField handle:^(YQAlertAction *action) {
        
    }];
    
    YQAlertAction *cancel = [YQAlertAction actionWithTitle:@"取消" handler:^(YQAlertAction *action) {
        
    }];
    
    
    
    YQAlertAction *sure = [YQAlertAction actionWithTitle:@"确定" titleColor:[UIColor purpleColor] handler:^(YQAlertAction *action) {
        
    }];;
    
    [alertView addAction:action];
    [alertView addAction:cancel];
    [alertView addAction:sure];
    [alertView show];
}

- (void)second{
    
    YQAlertView *alert = [YQAlertView alertViewWithTitle:@"未开启定位服务" message:@"请进入系统设置中开启定位服务:设置->隐私->定位服务->中影电影->开启定位服务"];
    YQAlertAction *sure = [YQAlertAction actionWithTitle:@"立即开启" titleColor:UIColorFromHex(0xdc4ad2) handler:^(YQAlertAction *action) {
        NSURL * url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        
        if([[UIApplication sharedApplication] canOpenURL:url]) {
            
            NSURL*url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
            [[UIApplication sharedApplication] openURL:url];
            
        }
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
