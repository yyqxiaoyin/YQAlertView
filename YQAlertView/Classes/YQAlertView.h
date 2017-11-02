//
//  YQAlertView.h
//  YQAlertView
//
//  Created by Mopon on 2017/10/27.
//  Copyright © 2017年 YYQXiaoyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YQAlertAction;

@interface YQAlertView : UIView

/**
 初始化警告窗

 @param title       标题
 @param message     信息
 @return            返回一个警告框对象
 */
+ (instancetype)alertViewWithTitle:(NSString *)title message:(NSString *)message;


/**
 初始化

 @param attributedTitle     带属性标题
 @param attributedMessage   带属性信息
 @return                    返回一个警告框对象
 */
+ (instancetype)alertViewWithAttributedTitle:(NSAttributedString *)attributedTitle attributedmessage:(NSAttributedString *)attributedMessage;

- (void)addAction:(YQAlertAction *)action;

- (void)show;

- (void)hide;

@end

typedef NS_ENUM(NSUInteger, AlertActionType) {
    AlertActionTypeNormal      = 0,
    AlertActionTypeTextField,
    AlertActionTypeCustom,
};

typedef void(^AlertActionNormalHandler)(YQAlertAction *action);

typedef void(^AlertActionTextFieldHandle)(YQAlertAction *action);

typedef void(^CustumViewTextFieldHandle)(YQAlertAction *action);

@interface YQAlertAction : UIView

+ (instancetype)actionWithTitle:(NSString *)title handler:(AlertActionNormalHandler)handler;

+ (instancetype)actionWithAttributedTitle:(NSAttributedString *)attributedTitle handler:(AlertActionNormalHandler)handler;

+ (instancetype)actionWithTextField:(UITextField *)textField handle:(AlertActionTextFieldHandle)handler;

+ (instancetype)actionWithCustumView:(UIView *)customView;

@property (nonatomic, assign, readonly) AlertActionType alertActionType;

- (void)setBorderWithTop:(BOOL)top left:(BOOL)left bottom:(BOOL)bottom right:(BOOL)right borderColor:(UIColor *)color;

- (void)releaseBlock;

@end

