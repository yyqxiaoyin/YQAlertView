//
//  UIImage+YQPAdd.h
//  yqpay
//
//  Created by 尹永奇 on 2018/3/12.
//  Copyright © 2018年 Cuiye. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YQPAdd)

+ (instancetype)imageWithGradientWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor size:(CGSize)size cornerRadius:(CGFloat)cornerRadius;

+ (instancetype)imageWithGradientWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor size:(CGSize)size;

+ (instancetype)yqp_gradientColorImageWithSize:(CGSize)size;

+ (instancetype)yqp_WhiteColorImageWithSize:(CGSize)size;

+ (UIImage *)dashLineImageWithBySize:(CGSize)size;

@end
