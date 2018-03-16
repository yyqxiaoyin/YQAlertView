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
+ (instancetype)alertViewWithAttributedTitle:(NSAttributedString *)attributedTitle attributedMessage:(NSAttributedString *)attributedMessage;

/**
 初始化一个 NSString标题  NSAttributedString信息 的alertView
 
 @param title     带属性标题
 @param attributedMessage             信息
 @return                    返回一个警告框对象
 */
+ (instancetype)alertViewWithTitle:(NSString *)title attributedMessage:(NSAttributedString *)attributedMessage;

/**
 初始化一个 NSAttributedString标题  NSString信息 的alertView
 
 @param attributedTitle     带属性标题
 @param message             信息
 @return                    返回一个警告框对象
 */
+ (instancetype)alertviewWithAttributedTitle:(NSAttributedString *)attributedTitle messgae:(NSString *)message;

/** 标题颜色 */
@property (nonatomic ,strong) UIColor *titleColor;

/** 信息颜色 */
@property (nonatomic ,strong) UIColor *messageColor;

/** 标题属性文字 */
@property (nonatomic ,strong) NSAttributedString *attributedTitle;

/** 信息属性文字 */
@property (nonatomic ,strong) NSAttributedString *attributedMessage;

/** 当前所有action数组 */
@property (nonatomic ,strong ,readonly) NSMutableArray *actions;

/** 最后一个按钮的默认颜色 */
@property (nonatomic ,strong) UIColor *lastButtonActionColor UI_APPEARANCE_SELECTOR;

/** 是否允许点击背景隐藏 */
@property (nonatomic, assign) BOOL shouldTouchHide;

/** 是否显示按钮之间分割线 */
@property (nonatomic ,assign) BOOL shouldShowLine;

- (void)addAction:(YQAlertAction *)action;

- (void)show;

- (void)showWithHideDelay:(NSTimeInterval)delay;

- (void)hide;

- (void)hideWithCompletion:(dispatch_block_t)completion;

+ (void)hide;

+ (void)hideWithCompletion:(dispatch_block_t)completion;

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

@property (nonatomic, assign, readonly) AlertActionType alertActionType;

@property (nonatomic ,strong) UIColor *titleColor;

@property (nonatomic ,strong) UIColor *backgroundColor;


+ (instancetype)actionWithTitle:(NSString *)title handler:(AlertActionNormalHandler)handler;

+ (instancetype)actionWithAttributedTitle:(NSAttributedString *)attributedTitle handler:(AlertActionNormalHandler)handler;

+ (instancetype)actionWithTextField:(UITextField *)textField handle:(AlertActionTextFieldHandle)handler;

+ (instancetype)actionWithTitle:(NSString *)title titleColor:(UIColor *)titleColor handler:(AlertActionNormalHandler)handler;

+ (instancetype)actionWithCustumView:(UIView *)customView;

- (void)setBorderWithTop:(BOOL)top left:(BOOL)left bottom:(BOOL)bottom right:(BOOL)right borderColor:(UIColor *)color;

- (void)releaseBlock;

@end

